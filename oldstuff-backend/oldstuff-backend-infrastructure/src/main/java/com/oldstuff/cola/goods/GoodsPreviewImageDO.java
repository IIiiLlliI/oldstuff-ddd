package com.oldstuff.cola.goods;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@TableName("goods_preview_image")
@Schema(name = "GoodsPreviewImage", description = "商品预览图")
public class GoodsPreviewImageDO implements Serializable {
	private static final long serialVersionUID =  49122095702166954L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "预览图id")
	private String id;

   	@Schema(description = "商品id")
	private String goodsId;

   	@Schema(description = "预览图路径")
	private String image;

}
