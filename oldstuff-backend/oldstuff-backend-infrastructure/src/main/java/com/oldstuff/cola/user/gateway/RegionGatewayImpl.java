package com.oldstuff.cola.user.gateway;

import com.oldstuff.cola.domain.user.gateway.RegionGateway;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.dto.data.user.AddressMidInfoDTO;
import com.oldstuff.cola.exception.BusinessException;
import com.oldstuff.cola.user.RegionDO;
import com.oldstuff.cola.user.mapper.RegionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

@Component
public class RegionGatewayImpl implements RegionGateway {

    @Autowired
    RegionMapper regionMapper;

    @Override
    public AddressMidInfoDTO verifyAndTransIdToName(AddressMidInfoDTO dto) {
        Integer provinceId = dto.getProvinceId();
        Integer cityId = dto.getCityId();
        Integer districtId = dto.getDistrictId();

        List<Integer> ids = List.of(provinceId, cityId, districtId);
        List<RegionDO> regionList = regionMapper.selectBatchIds(ids);

        if (regionList.size() != 3) {
            throw new BusinessException(BusinessCode.REGION_INFO_ERROR);
        }

        Map<Integer, RegionDO> regionMap = regionList.stream()
                .collect(Collectors.toMap(RegionDO::getId, Function.identity()));

        RegionDO province = regionMap.get(provinceId);
        RegionDO city = regionMap.get(cityId);
        RegionDO district = regionMap.get(districtId);

        if (province == null || city == null || district == null
                || province.getParentId() != 0
                || !Objects.equals(city.getParentId(), provinceId)
                || !Objects.equals(district.getParentId(), cityId)) {
            throw new BusinessException(BusinessCode.REGION_INFO_ERROR);
        }

        dto.setProvince(province.getRegionName());
        dto.setCity(city.getRegionName());
        dto.setDistrict(district.getRegionName());
        return dto;
    }


}
