package com.oldstuff.cola.dto.data.chat;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "会话创建")
public class ChatSessionCreateDTO {

    @Schema(description = "接收者id")
    private Integer receivedId;

    @Schema(description = "商品id")
    private Integer goodId;

}
