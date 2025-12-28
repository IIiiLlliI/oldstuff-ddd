package com.oldstuff.cola.dto.data.order;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户查：根据商品名、订单状态
 *
 * 商家查：根据商品名、订单状态
 *
 * 管理查：根据商品名、订单号、支付流水号、物流单号、订单状态
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "订单查询DTO")
public class OrderListQueryDTO {
    @Schema(description = "分页")
    private Integer page;

    @Schema(description = "分页大小")
    private Integer pageSize;

    @Schema(description = "订单号" )
    private String orderNumber;

    @Schema(description = "支付流水号" )
    private String payNumber;

    @Schema(description = "物流单号" )
    private String logisticsNumber;

    @Schema(description = "商品名" )
    private String goodsName;

    @Schema(description = "买家id" )
    private Integer customerId;

    @Schema(description = "卖家id" )
    private Integer merchantId;

    @Schema(description = "订单状态 0 进行中 1 已完成 2 已取消" )
    private Integer status;

    @Schema(description = "子状态 status=0,0 待支付 1 待发货 2 待收货 3 退款中 status=1,0 正常完成 1 已退款 status=2,0 用户取消 1 超时取消 2 商家取消" )
    private Integer subStatus;

    @Schema(description = "订单年份" )
    private String year;

}
