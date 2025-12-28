package com.oldstuff.cola.api;

import com.oldstuff.cola.dto.data.user.*;

import java.util.List;

public interface UserServiceI {

    String login(UserLoginCmd userLoginCmd);

    UserInfoDTO getUserInfo(String id);

    void registerByEmail(UserEmailRegisterCmd userEmailRegisterCmd);

    void registerByPhone(UserPhoneRegisterCmd userPhoneRegisterCmd);

    void update(UserInfoUpdateCmd userInfoUpdateCmd, String usrID);

    List<UserAddressDTO> getAddressList(String userID);

    void createAddress(UserAddressCreateCmd userAddressCreateCmd, String userID);

    void updateAddress(UserAddressUpdateCmd userAddressUpdateDTO, String userID);

    void delete(String ids, String userID);
}
