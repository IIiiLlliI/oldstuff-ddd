package com.oldstuff.cola.dto.data;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "分页结果")
public class PageDTO<T> {

    @Schema(description = "分页结果")
    private T rows;

    @Schema(description = "数据总量")
    private long total;

}
