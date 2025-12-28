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
import java.time.LocalDateTime;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@TableName("comment")
@Schema(name = "Comment", description = "商品评论")
public class Comment  implements Serializable {
	private static final long serialVersionUID =  7418813383038624040L;

	/**
	 * 评论id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "评论id")
	private Integer id;

	/**
	 * 用户id
	 */
   	@Schema(description = "用户id")
	private Integer userId;

	/**
	 * 评论内容
	 */
   	@Schema(description = "评论内容")
	private String content;

	/**
	 * 点赞数
	 */
   	@Schema(description = "点赞数")
	private Integer likes;

	/**
	 * 评分 0-10
	 */
   	@Schema(description = "评分 0-10")
	private Integer score;

	/**
	 * 评论时间
	 */
   	@Schema(description = "评论时间")
	private LocalDateTime createTime;

}
