package com.oldstuff.cola.dto.data.order;

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
@Schema(description = "订单信息VO")
public class OrderVO {

    @Schema(description = "订单id")
    private Integer id;

    @Schema(description = "订单号" )
    private String orderNumber;

    @Schema(description = "支付流水号")
    private String payNumber;

    @Schema(description = "物流单号" )
    private String logisticsNumber;

    @Schema(description = "商品名称" )
    private String goodsName;

    @Schema(description = "商品单价" )
    private Double goodsPrice;

    @Schema(description = "商品封面")
    private String goodsPoster;

    @Schema(description = "购买数量" )
    private Integer nums;

    @Schema(description = "运费" )
    private Integer shipFee;

    @Schema(description = "总价" )
    private Double totalPrice;

    @Schema(description = "卖家姓名" )
    private String merchantName;

    @Schema(description = "订单状态 0 进行中 1 已完成 2 已取消" )
    private Integer status;

    @Schema(description = "子状态 status=0,0 待支付 1 待发货 2 待收货 3 退款中 status=1,0 正常完成 1 已退款 status=2,0 用户取消 1 超时取消 2 商家取消" )
    private Integer subStatus;

    @Schema(description = "取消原因" )
    private String cancelReason;

    @Schema(description = "退货原因" )
    private String returnStatus;

    @Schema(description = "创建时间（下单时间）" )
    private LocalDateTime createTime;

    @Schema(description = "支付时间" )
    private LocalDateTime payTime;

    @Schema(description = "发货时间" )
    private LocalDateTime deliveryTime;

    @Schema(description = "交易结束时间" )
    private LocalDateTime finishTime;

    @Schema(description = "用户地址省")
    private String userAddressProvince;

    @Schema(description = "市")
    private String userAddressCity;

    @Schema(description = "区")
    private String userAddressDistrict;

    @Schema(description = "详细地址")
    private String userAddressDetail;

}
