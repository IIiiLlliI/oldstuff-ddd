package com.oldstuff.cola.goods;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.domain.common.enums.SoftDeleteStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsAuditStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsFinishStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsType;
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
@TableName("goods")
@Schema(name = "Goods", description = "商品信息")
public class GoodsDO implements Serializable {
	private static final long serialVersionUID =  3250408823281759238L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "商品id")
	private String id;

   	@Schema(description = "商品名称")
	private String name;

   	@Schema(description = "商品类型 SALE 出售 EXCHANGE 换物 BOTH 都有")
	private GoodsType type;

   	@Schema(description = "商品分类")
	private Integer categoryId;

   	@Schema(description = "成色状态")
	private Integer finenessId;

   	@Schema(description = "发布人")
	private String userId;

   	@Schema(description = "商品预览图")
	private String poster;

   	@Schema(description = "商品价格")
	private Double price;

   	@Schema(description = "商品原价")
	private Double originalPrice;

   	@Schema(description = "商品描述")
	private String description;

   	@Schema(description = "换物需求")
	private String want;

   	@Schema(description = "商品浏览量")
	private Integer views;

   	@Schema(description = "点赞数")
	private Integer likes;

   	@Schema(description = "商品创建时间")
	private LocalDateTime createdAt;

   	@Schema(description = "商品更新时间")
	private LocalDateTime updatedAt;

   	@Schema(description = "上架状态 DISABLED 下架 ENABLED 上架")
	private EnableStatus publishStatus;

   	@Schema(description = "删除状态 NOT_DELETED 未删除 DELETED 已删除")
	private SoftDeleteStatus deleteStatus;

   	@Schema(description = "售出状态 NOT_FINISHED 未售出 FINISHED 已售出")
	private GoodsFinishStatus finishStatus;

   	@Schema(description = "库存数量")
	private Integer nums;

   	@Schema(description = "包邮 DISABLED 否 ENABLED 是")
	private EnableStatus freeShip;

   	@Schema(description = "发货省份")
	private Integer deliveryProvinceId;

	@Schema(description = "审核员id")
	private Integer auditUser;

	@Schema(description = "商品状态 PENDING 待审核 REJECTED 驳回 APPROVED 通过")
	private GoodsAuditStatus auditStatus;

	@Schema(description = "驳回理由")
	private String rejectReason;

}
