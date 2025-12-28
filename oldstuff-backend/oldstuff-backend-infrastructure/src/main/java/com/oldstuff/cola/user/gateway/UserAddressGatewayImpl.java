package com.oldstuff.cola.user.gateway;

import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.domain.user.gateway.UserAddressGateway;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.dto.data.user.AddressMidInfoDTO;
import com.oldstuff.cola.exception.BusinessException;
import com.oldstuff.cola.user.UserAddressDO;
import com.oldstuff.cola.user.mapper.UserAddressMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Component
public class UserAddressGatewayImpl implements UserAddressGateway {

    @Autowired
    UserAddressMapper userAddressMapper;

    @Override
    public void insert(String userID, String receiverName, String receiverPhone, String detailAddress, EnableStatus isDefault, String addressTag, AddressMidInfoDTO addressMidInfoDTO) {
        UserAddressDO userAddressDO = UserAddressDO.builder()
                .userId(userID)
                .receiverName(receiverName)
                .receiverPhone(receiverPhone)
                .detailAddress(detailAddress)
                .isDefault(isDefault)
                .addressTag(addressTag)
                .build();
        BeanUtils.copyProperties(addressMidInfoDTO, userAddressDO);
        userAddressMapper.insert(userAddressDO);
    }

    @Override
    public void update(String userID, String id, String receiverName, String receiverPhone, String detailAddress, EnableStatus isDefault, String addressTag, AddressMidInfoDTO addressMidInfoDTO) {
        UserAddressDO userAddressDO = userAddressMapper.selectByIdAndUserID(id, userID);
        if (userAddressDO == null || !userAddressDO.getUserId().equals(userID)) {
            throw new BusinessException(BusinessCode.USER_ADDRESS_NOT_FOUND);
        }

        userAddressDO.setReceiverName(receiverName);
        userAddressDO.setReceiverPhone(receiverPhone);
        userAddressDO.setDetailAddress(detailAddress);
        userAddressDO.setIsDefault(isDefault);
        userAddressDO.setAddressTag(addressTag);
        userAddressDO.setUpdatedAt(LocalDateTime.now());
        BeanUtils.copyProperties(addressMidInfoDTO, userAddressDO);
        userAddressMapper.updateById(userAddressDO);
    }

    @Override
    @Transactional
    public void delete(String ids, String userID) {
        String[] idArray = ids.split(",");
        if (idArray.length == 0) {
            throw new BusinessException(BusinessCode.PARAMS_ERROR);
        }
        Integer effectRows = userAddressMapper.deleteByIdsAndUserID(idArray, userID);
        if (effectRows != idArray.length) {
            throw new BusinessException(BusinessCode.USER_ADDRESS_NOT_FOUND);
        }
    }
}
