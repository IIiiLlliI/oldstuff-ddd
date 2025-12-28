package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "商品列表查询条件")
public class GoodsListByMarketQry {

    @Schema(description = "商品名称")
    private String name;

    @Schema(description = "分页")
    private Integer page;

    @Schema(description = "分页大小")
    private Integer pageSize;

    @Schema(description = "商品类型")
    private String type;

    @Schema(description = "商品分类")
    private Integer categoryId;

    @Schema(description = "成色分类")
    private Integer finenessId;

    @Schema(description = "最小价格")
    private Integer minPrice;

    @Schema(description = "最大价格")
    private Integer maxPrice;

    @Schema(description = "价格排序 NONE 不排序 DESC 降序 ASC 升序")
    private PriceSortEnum priceSort;

    @Schema(description = "最新发布排序 NONE 不排序 DESC 降序")
    private CreatetimeSortEnum createTimeSort;

    @Schema(description = "最受欢迎排序 NONE 不排序 DESC 降序")
    private LikeSortEnum likeSort;

}
