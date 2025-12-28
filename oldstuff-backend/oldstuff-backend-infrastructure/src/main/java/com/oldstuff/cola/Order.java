package com.oldstuff.cola;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@TableName("`order`")
@Schema(name = "Order", description = "订单")
public class Order  implements Serializable {
	private static final long serialVersionUID =  7496344585363751372L;

	/**
	 * 订单id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "订单id")
	private Integer id;

	/**
	 * 订单号
	 */
   	@Schema(description = "订单号")
	private String orderNumber;

	/**
	 * 支付流水号
	 */
   	@Schema(description = "支付流水号")
	private String payNumber;

	/**
	 * 物流公司名称
	 */
   	@Schema(description = "物流公司名称")
	private String logisticsName;

	/**
	 * 物流公司编码
	 */
   	@Schema(description = "物流公司编码")
	private String logisticsCode;

	/**
	 * 物流单号
	 */
   	@Schema(description = "物流单号")
	private String logisticsNumber;

	/**
	 * 商品id
	 */
   	@Schema(description = "商品id")
	private Integer goodsId;

	/**
	 * 商品名称
	 */
   	@Schema(description = "商品名称")
	private String goodsName;

	/**
	 * 商品单价
	 */
   	@Schema(description = "商品单价")
	private Double goodsPrice;

	/**
	 * 商品封面
	 */
	@Schema(description = "商品封面")
	private String goodsPoster;

	/**
	 * 购买数量
	 */
   	@Schema(description = "购买数量")
	private Integer nums;

	/**
	 * 运费
	 */
   	@Schema(description = "运费")
	private Integer shipFee;

	/**
	 * 总价
	 */
   	@Schema(description = "总价")
	private Double totalPrice;

	/**
	 * 买家id
	 */
   	@Schema(description = "买家id")
	private Integer customerId;

	/**
	 * 卖家id
	 */
   	@Schema(description = "卖家id")
	private Integer merchantId;

	/**
	 * 订单状态 0 进行中 1 已完成 2 已取消
	 */
   	@Schema(description = "订单状态 0 进行中 1 已完成 2 已取消")
	private Integer status;

	/**
	 * 子状态 status=0,0 待支付 1 待发货 2 待收货 3 退款中 status=1,0 正常完成 1 已退款 status=2,0 用户取消 1 超时取消 2 商家取消
	 */
   	@Schema(description = "子状态 status=0,0 待支付 1 待发货 2 待收货 3 退款中 status=1,0 正常完成 1 已退款 status=2,0 用户取消 1 超时取消 2 商家取消")
	private Integer subStatus;

	/**
	 * 对用户删除状态 0 未删除 1 已删除
	 */
   	@Schema(description = "对用户删除状态 0 未删除 1 已删除")
	private Integer deleteByCustomer;

	/**
	 * 对商家删除状态 0 未删除 1 已删除
	 */
   	@Schema(description = "对商家删除状态 0 未删除 1 已删除")
	private Integer deleteByMerchant;

	/**
	 * 取消原因类别
	 */
   	@Schema(description = "取消原因类别")
	private String cancelReasonCategory;

	/**
	 * 取消原因
	 */
   	@Schema(description = "取消原因")
	private String cancelReason;

	/**
	 * 退货原因类别
	 */
   	@Schema(description = "退货原因类别")
	private String returnReasonCategory;

	/**
	 * 退货原因
	 */
   	@Schema(description = "退货原因")
	private String returnReason;

	/**
	 * 创建时间（下单时间）
	 */
   	@Schema(description = "创建时间（下单时间）")
	private LocalDateTime createTime;

	/**
	 * 更新时间
	 */
   	@Schema(description = "更新时间")
	private LocalDateTime updateTime;

	/**
	 * 支付时间
	 */
   	@Schema(description = "支付时间")
	private LocalDateTime payTime;

	/**
	 * 发货时间
	 */
   	@Schema(description = "发货时间")
	private LocalDateTime deliveryTime;

	/**
	 * 交易结束时间
	 */
   	@Schema(description = "交易结束时间")
	private LocalDateTime finishTime;

	/**
	 * 用户地址省
	 */
   	@Schema(description = "用户地址省")
	private String userAddressProvince;

	/**
	 * 市
	 */
   	@Schema(description = "市")
	private String userAddressCity;

	/**
	 * 区
	 */
   	@Schema(description = "区")
	private String userAddressDistrict;

	/**
	 * 详细地址
	 */
   	@Schema(description = "详细地址")
	private String userAddressDetail;

}
