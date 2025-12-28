package com.oldstuff.cola.common;

import com.oldstuff.cola.domain.common.gateway.VerifyCodeGateway;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

@Component
public class VerifyCodeGatewayImpl implements VerifyCodeGateway {

    @Autowired
    StringRedisTemplate stringRedisTemplate;

    @Override
    public void verifyRegEmailCode(String email, String inputCode) {
        String code = stringRedisTemplate.opsForValue().get("reg-email:" + email);
        if (!inputCode.equals(code)) {
            throw new BusinessException(BusinessCode.USER_CODE_ERROR);
        }
    }

    @Override
    public void verifyRegPhoneCode(String phone, String inputCode) {
        String code = stringRedisTemplate.opsForValue().get("reg-phone:" + phone);
        if (!inputCode.equals(code)) {
            throw new BusinessException(BusinessCode.USER_CODE_ERROR);
        }
    }
}
