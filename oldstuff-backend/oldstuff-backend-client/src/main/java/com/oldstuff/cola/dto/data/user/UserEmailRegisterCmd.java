package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "用户邮箱注册信息")
public class UserEmailRegisterCmd {

    @Schema(description = "邮箱")
    private String email;

    @Schema(description = "用户密码")
    private String password;

    @Schema(description = "验证码")
    private String code;

}
