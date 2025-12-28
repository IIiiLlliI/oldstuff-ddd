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
@TableName("chat_session")
@Schema(name = "ChatSession", description = "聊天会话")
public class ChatSession  implements Serializable {
	private static final long serialVersionUID =  1924590680574167958L;

	/**
	 * 会话id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "会话id")
	private Integer id;

	/**
	 * 接收者id
	 */
   	@Schema(description = "接收者id")
	private Integer receivedId;

	/**
	 * 发送者id
	 */
   	@Schema(description = "发送者id")
	private Integer sendId;

	/**
	 * 最后一条消息
	 */
   	@Schema(description = "最后一条消息")
	private String lastMessage;

	/**
	 * 最后聊天时间
	 */
   	@Schema(description = "最后聊天时间")
	private LocalDateTime lastReplyTime;

	/**
	 * 当前咨询商品id
	 */
   	@Schema(description = "当前咨询商品id")
	private Integer goodId;

}
