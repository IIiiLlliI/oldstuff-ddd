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
@TableName("goods_category")
@Schema(name = "GoodsCategory", description = "商品分类")
public class GoodsCategoryDO implements Serializable {
	private static final long serialVersionUID =  2134296030445025330L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "分类id")
	private Integer id;

   	@Schema(description = "分类名")
	private String category;

}
