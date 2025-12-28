package com.oldstuff.cola.dto.data.chat;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "发送消息")
public class ChatRecordCreateDTO {

    @NotNull
    @Schema(description = "接收者id")
    private Integer receivedId;

    @NotNull
    @Schema(description = "消息类型 0 消息 1 图片")
    private Integer type;

    @Schema(description = "图片消息的图片路径")
    private String image;

    @Schema(description = "消息内容")
    private String content;

}
