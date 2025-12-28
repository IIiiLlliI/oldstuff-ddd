package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;

@Data
public class AddressMidInfoDTO {

    @Schema(description = "省份id" )
    private Integer provinceId;

    @Schema(description = "城市id" )
    private Integer cityId;

    @Schema(description = "区县id" )
    private Integer districtId;

    @Schema(description = "省份名称" )
    private String province;

    @Schema(description = "城市名称" )
    private String city;

    @Schema(description = "区县名称" )
    private String district;

    public AddressMidInfoDTO(Integer provinceId, Integer cityId, Integer districtId) {
        this.provinceId = provinceId;
        this.cityId = cityId;
        this.districtId = districtId;
    }

}
