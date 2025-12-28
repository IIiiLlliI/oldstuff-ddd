package com.oldstuff.cola.user;

import com.oldstuff.cola.api.UserServiceI;
import com.oldstuff.cola.domain.common.gateway.VerifyCodeGateway;
import com.oldstuff.cola.domain.user.*;
import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.domain.user.gateway.RegionGateway;
import com.oldstuff.cola.domain.user.gateway.UserAddressGateway;
import com.oldstuff.cola.domain.user.gateway.UserGateway;
import com.oldstuff.cola.domain.user.service.UserDomainService;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.dto.data.user.*;
import com.oldstuff.cola.exception.BusinessException;
import com.oldstuff.cola.user.mapper.UserAddressMapper;
import com.oldstuff.cola.user.mapper.UserMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserServiceI {

    @Autowired
    UserGateway userGateway;

    @Autowired
    RegionGateway regionGateway;

    @Autowired
    UserAddressGateway userAddressGateway;

    @Autowired
    VerifyCodeGateway verifyCodeGateway;

    @Autowired
    UserMapper userMapper;

    @Autowired
    UserAddressMapper userAddressMapper;

    @Autowired
    UserDomainService userDomainService;

    @Override
    public String login(UserLoginCmd cmd) {
        User user = userGateway.getByUsername(cmd.getUsername());
        user.login(cmd.getPassword(),userGateway);
        String token = userGateway.generateToken(user);
        return token;
    }

    @Override
    public UserInfoDTO getUserInfo(String id) {
        UserDO userDO = userMapper.selectById(id);
        if (userDO == null) {
            throw new BusinessException(BusinessCode.USER_NOT_FOUND);
        }
        UserInfoDTO userInfoDTO = UserInfoDTO.builder().build();
        BeanUtils.copyProperties(userDO, userInfoDTO);
        return userInfoDTO;
    }

    @Override
    public void registerByEmail(UserEmailRegisterCmd cmd) {
        verifyCodeGateway.verifyRegEmailCode(cmd.getEmail(), cmd.getCode());
        User user = User.registerByEmail(cmd.getEmail(), userGateway.encodePassword(cmd.getPassword()), userGateway.genRandomName(), userGateway);
        userGateway.insert(user);
    }

    @Override
    public void registerByPhone(UserPhoneRegisterCmd cmd) {
        verifyCodeGateway.verifyRegPhoneCode(cmd.getPhone(), cmd.getCode());
        User user = User.registerByPhone(cmd.getPhone(), userGateway.encodePassword(cmd.getPassword()), userGateway.genRandomName(), userGateway);
        userGateway.insert(user);
    }

    @Override
    public void update(UserInfoUpdateCmd cmd, String userID) {
        User user = userGateway.getByUseID(userID);
        user.update(cmd.getUsername(), cmd.getName(), cmd.getAvatar());
    }

    @Override
    public List<UserAddressDTO> getAddressList(String userID) {
        List<UserAddressDO> addressList = userAddressMapper.getAddressListByUserID(userID);
        if (addressList == null || addressList.isEmpty()) {
            return null;
        }
        return addressList.stream().map(addressDO -> {
            UserAddressDTO dto = new UserAddressDTO();
            BeanUtils.copyProperties(addressDO, dto);
            return dto;
        }).toList();
    }

    @Override
    public void createAddress(UserAddressCreateCmd cmd, String userID) {
        AddressMidInfoDTO addressMidInfoDTO = regionGateway.verifyAndTransIdToName(new AddressMidInfoDTO(cmd.getProvinceId(), cmd.getCityId(), cmd.getDistrictId()));

        userAddressGateway.insert(userID, cmd.getReceiverName(), cmd.getReceiverPhone(), cmd.getDetailAddress(), EnableStatus.valueOf(cmd.getIsDefault()), cmd.getAddressTag(), addressMidInfoDTO);
    }

    @Override
    public void updateAddress(UserAddressUpdateCmd cmd, String userID) {
        AddressMidInfoDTO addressMidInfoDTO = regionGateway.verifyAndTransIdToName(new AddressMidInfoDTO(cmd.getProvinceId(), cmd.getCityId(), cmd.getDistrictId()));

        userAddressGateway.update(userID, cmd.getId(), cmd.getReceiverName(), cmd.getReceiverPhone(), cmd.getDetailAddress(), EnableStatus.valueOf(cmd.getIsDefault()), cmd.getAddressTag(), addressMidInfoDTO);
    }

    @Override
    public void delete(String ids, String userID) {
        userAddressGateway.delete(ids, userID);
    }
}
