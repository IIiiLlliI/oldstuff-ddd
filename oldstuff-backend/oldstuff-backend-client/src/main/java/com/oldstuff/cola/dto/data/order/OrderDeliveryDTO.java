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
@Schema(description = "订单发货信息")
public class OrderDeliveryDTO {

    @Schema(description = "订单id" )
    private Integer id;

    @Schema(description = "物流公司id" )
    private Integer logisticsId;

    @Schema(description = "物流单号" )
    private String logisticsNumber;


}
