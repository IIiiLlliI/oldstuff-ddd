package com.oldstuff.cola.domain.user;

import com.oldstuff.cola.domain.user.gateway.UserGateway;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.exception.BusinessException;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class Account {
    private String username;
    private String password;
    private String phone;
    private String email;

    public void checkPassword(String rawPassword, UserGateway userGateway) {
        if (!userGateway.matchPassword(rawPassword, this.password)) {
            throw new BusinessException(BusinessCode.USER_PASSWORD_ERROR);
        }
    }

    public static void checkEmailExist(String email, UserGateway userGateway) {
        if (userGateway.existByEmail(email)) {
            throw new BusinessException(BusinessCode.USER_ALREADY_EXISTS);
        }
    }

    public static void checkPhoneExist(String phone, UserGateway userGateway) {
        if (userGateway.existByPhone(phone)) {
            throw new BusinessException(BusinessCode.USER_ALREADY_EXISTS);
        }
    }

}
