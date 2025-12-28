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
@Schema(description = "订单取消")
public class OrderCancelDTO {

    @Schema(description = "订单id" )
    private Integer id;

    @Schema(description = "取消原因类别id" )
    private Integer cancelCategoryId;

    @Schema(description = "取消原因" )
    private String cancelReason;

}
