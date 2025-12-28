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
@Schema(description = "订单创建VO")
public class OrderCreateVO {

    @Schema(description = "订单id")
    private Integer id;

    @Schema(description = "支付单号")
    private String payNumber;

}
