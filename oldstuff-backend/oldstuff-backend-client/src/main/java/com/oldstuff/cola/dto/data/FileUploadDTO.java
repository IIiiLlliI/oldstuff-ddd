package com.oldstuff.cola.dto.data;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "文件上传")
public class FileUploadDTO {

    @Schema(description = "文件")
    private MultipartFile file;

    @Schema(description = "相对路径")
    private String folderName;

}
