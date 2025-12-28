package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Schema(description = "地址信息VO")
public class UserAddressDTO {

    @Schema(description = "收货地址ID" )
    private String id;

    @Schema(description = "收货人姓名" )
    private String receiverName;

    @Schema(description = "收货人电话" )
    private String receiverPhone;

    @Schema(description = "国家代码，如CN/US等" )
    private String countryCode;

    @Schema(description = "国家名称" )
    private String country;

    @Schema(description = "省份名称" )
    private String province;

    @Schema(description = "城市名称" )
    private String city;

    @Schema(description = "区县名称" )
    private String district;

    @Schema(description = "详细地址" )
    private String detailAddress;

    @Schema(description = "默认地址 DISABLED 否 ENABLED 是")
    private String isDefault;

    @Schema(description = "地址标签，如家、公司、学校等" )
    private String addressTag;

}
