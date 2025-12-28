package com.oldstuff.cola.domain.common.gateway;

public interface VerifyCodeGateway {
    void verifyRegEmailCode(String email, String inputCode);
    void verifyRegPhoneCode(String phone, String inputCode);
}
