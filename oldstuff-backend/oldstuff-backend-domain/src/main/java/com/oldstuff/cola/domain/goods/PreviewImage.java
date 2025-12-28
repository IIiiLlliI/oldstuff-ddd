package com.oldstuff.cola.domain.goods;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@AllArgsConstructor
@Builder
@Schema(name = "GoodsPreviewImage", description = "商品预览图")
public class PreviewImage {

	private String image;

}
