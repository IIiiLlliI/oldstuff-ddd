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
@TableName("chat_records")
@Schema(name = "ChatRecords", description = "聊天记录")
public class ChatRecords  implements Serializable {
	private static final long serialVersionUID =  5985495249794922518L;

	/**
	 * 消息id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "消息id")
	private Integer id;

	/**
	 * 发送者id
	 */
   	@Schema(description = "发送者id")
	private Integer sendId;

	/**
	 * 接收者id
	 */
   	@Schema(description = "接收者id")
	private Integer receivedId;

	/**
	 * 消息类型 0 消息 1 图片 2 系统消息
	 */
   	@Schema(description = "消息类型 0 消息 1 图片 2 系统消息")
	private Integer type;

	/**
	 * 图片消息的图片路径
	 */
   	@Schema(description = "图片消息的图片路径")
	private String image;

	/**
	 * 聊天内容
	 */
   	@Schema(description = "聊天内容")
	private String content;

	/**
	 * 消息状态 0 未读 1 已读 消息状态对于接收者
	 */
   	@Schema(description = "消息状态 0 未读 1 已读 消息状态对于接收者")
	private Integer status;

	/**
	 * 消息发送时间
	 */
   	@Schema(description = "消息发送时间")
	private LocalDateTime createTime;

}
