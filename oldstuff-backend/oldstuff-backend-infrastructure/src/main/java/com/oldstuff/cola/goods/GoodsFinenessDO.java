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
@TableName("goods_fineness")
@Schema(name = "GoodsFineness", description = "商品成色")
public class GoodsFinenessDO implements Serializable {
	private static final long serialVersionUID =  8463163409977489494L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "成色id")
	private Integer id;

   	@Schema(description = "成色")
	private String fineness;

   	@Schema(description = "成色描述")
	private String description;

}
