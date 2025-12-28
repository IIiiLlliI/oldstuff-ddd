package com.oldstuff.cola.dto.data.chat;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "会话列表")
public class ChatSessionVO {

    @Schema(description = "会话id")
    private Integer id;

    @Schema(description = "接收者ID")
    private Integer receivedId;

    @Schema(description = "发送者ID")
    private Integer sendId;

    @Schema(description = "最后一条消息")
    private String lastMessage;

    @Schema(description = "最后聊天时间")
    private LocalDateTime lastReplyTime;

    @Schema(description = "接收者姓名")
    private String receivedName;

    @Schema(description = "接收者头像")
    private String receivedAvatar;

    @Schema(description = "未读消息数")
    private Integer unreadNum;

    @Schema(description = "商品id")
    private Integer goodId;

}
