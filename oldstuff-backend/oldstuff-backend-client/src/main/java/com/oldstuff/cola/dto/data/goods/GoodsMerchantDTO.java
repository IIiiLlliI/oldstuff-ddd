package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "商品商家信息")
public class GoodsMerchantDTO {
    @Schema(description = "用户ID")
    private Integer id;

    @Schema(description = "用户名")
    private String name;

    @Schema(description = "用户头像")
    private String avatar;

    @Schema(description = "用户评分(0.0-10.0)" )
    private Double score;

    @Schema(description = "成交订单数")
    private Integer orderNum;

    @Schema(description = "最后回复时间")
    private LocalDateTime lastReply;

    @Schema(description = "回复率")
    private String replyRate;
}