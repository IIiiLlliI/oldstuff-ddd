package com.oldstuff.cola.dto.data.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "随机商品数据")
public class GoodsRandomVO {

    @Schema(description = "商品ID")
    private Integer id;

    @Schema(description = "商品名称")
    private String name;

    @Schema(description = "商品价格")
    private Double price;

    @Schema(description = "成色状态ID")
    private Integer finenessId;

    @Schema(description = "商品封面")
    private String poster;

}
