package com.oldstuff.cola.dto.data.order;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "订单创建信息")
public class OrderCreateDTO {

    @Schema(description = "用户地址id" )
    private Integer userAddressId;

    @Schema(description = "商品id" )
    private Integer goodsId;

    @Schema(description = "购买数量" )
    private Integer nums;

}
