package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@Schema(description = "用户信息")
public class UserInfoDTO {

    @Schema(description = "用户id")
    private Integer id;

    @Schema(description = "用户名")
    private String name;

    @Schema(description = "用户头像")
    private String avatar;

    @Schema(description = "成交订单")
    private Integer orderNum;

    @Schema(description = "商家认证 DISABLED 未认证 REVIEWING 审核中 ACTIVE 认证")
    private String merchantAuth;

    @Schema(description = "用户评分")
    private Double score;

    @Schema(description = "最后回复时间")
    private LocalDateTime lastReply;

    @Schema(description = "最后登录时间")
    private LocalDateTime lastLogin;

}
