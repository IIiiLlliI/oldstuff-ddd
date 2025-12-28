package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "商品详情")
public class GoodsSelfVO {

    // 较ListVO减少发布人信息、增加审核、上架状态
    @Schema(description = "商品ID")
    private Integer id;

    @Schema(description = "商品名称")
    private String name;

    @Schema(description = "商品类型 0 出售 1 换物 2 都有")
    private Integer type;

    @Schema(description = "商品分类ID")
    private Integer categoryId;

    @Schema(description = "成色状态ID")
    private Integer finenessId;

    @Schema(description = "商品预览图" )
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

    @Schema(description = "商品上架时间")
    private LocalDateTime createTime;

    @Schema(description = "商品更新时间")
    private LocalDateTime updateTime;

    @Schema(description = "上架状态 0 下架 1 上架")
    private Integer publishStatus;

    @Schema(description = "售出状态 0 未售出 1 已售出")
    private Integer finishStatus;

    @Schema(description = "审核状态 0 待审核 1 驳回 2 通过")
    private Integer auditStatus;

    @Schema(description = "审核员id")
    private Integer auditUser;

    @Schema(description = "驳回理由")
    private Integer rejectReason;

    @Schema(description = "库存数量")
    private Integer nums;

    @Schema(description = "包邮 0 否 1 是" )
    private Integer freeShip;

    @Schema(description = "发货省份名称" )
    private String deliveryProvinceName;

    @Schema(description = "商品预览图")
    private List<String> images;

}