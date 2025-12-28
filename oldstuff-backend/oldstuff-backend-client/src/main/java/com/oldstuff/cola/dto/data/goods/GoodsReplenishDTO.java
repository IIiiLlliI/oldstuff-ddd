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
@Schema(description = "商品补货")
public class GoodsReplenishDTO {

    @Schema(description = "商品id")
    private Integer goodsId;

    @Schema(description = "补货数量")
    private Integer nums;

}
