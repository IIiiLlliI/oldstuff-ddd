package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;


@Data
@NoArgsConstructor
@Schema(description = "商品详情")
public class GoodsDTO {

    @Schema(description = "商品ID")
    private String id;

    @Schema(description = "商品名称")
    private String name;

    @Schema(description = "商品类型 SALE 出售 EXCHANGE 换物 BOTH 都有")
    private String type;

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
    private LocalDateTime createdAt;

    @Schema(description = "售出状态 NOT_FINISHED 未售出 FINISHED 已售出")
    private String finishStatus;

    @Schema(description = "库存数量")
    private Integer nums;

    @Schema(description = "包邮 DISABLED 否 ENABLED 是")
    private String freeShip;

    @Schema(description = "发货省份" )
    private String deliveryProvinceName;

    @Schema(description = "商品预览图")
    private List<String> images;

    @Schema(description = "发布人信息")
    private GoodsMerchantDTO user;

}
