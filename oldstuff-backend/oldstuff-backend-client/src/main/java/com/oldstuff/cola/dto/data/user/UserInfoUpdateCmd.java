package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "更新用户信息")
public class UserInfoUpdateCmd {

    @Schema(description = "用户名")
    private String name;

    @Schema(description = "用户账号")
    private String username;

    @Schema(description = "用户头像")
    private String avatar;

}
