package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "用户登录信息")
public class UserLoginCmd {

    @Schema(description = "账号")
    private String username;

    @Schema(description = "密码")
    private String password;

}
