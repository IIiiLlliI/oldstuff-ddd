package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "用户手机注册信息")
public class UserPhoneRegisterCmd {

    @Schema(description = "手机号")
    private String phone;

    @Schema(description = "用户密码")
    private String password;

    @Schema(description = "验证码")
    private String code;

}
