package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 用于创建商品、更新商品
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "商品信息DTO")
public class GoodsInfoDTO {

    @Schema(description = "商品名称")
    private String name;

    @Schema(description = "商品类型 0 出售 1 换物 2 都有" )
    private Integer type;

    @Schema(description = "商品分类")
    private Integer categoryId;

    @Schema(description = "成色状态")
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

    @Schema(description = "商品预览图")
    private List<String> images;

    @Schema(description = "库存数量")
    private Integer nums;

    @Schema(description = "包邮 0 否 1 是" )
    private Integer freeShip;

    @Schema(description = "发货省份" )
    private Integer deliveryProvinceId;

}
