package com.oldstuff.cola;

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
@TableName("comment_image")
@Schema(name = "CommentImage", description = "商品评论图片")
public class CommentImage  implements Serializable {
	private static final long serialVersionUID =  3441520542757156771L;

	/**
	 * 评论图片id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "评论图片id")
	private Integer id;

	/**
	 * 评论id
	 */
   	@Schema(description = "评论id")
	private Integer commentId;

	/**
	 * 图片
	 */
   	@Schema(description = "图片")
	private String image;

}
