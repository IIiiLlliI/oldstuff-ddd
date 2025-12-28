package com.oldstuff.cola.dto.data.user;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Schema(description = "地址更新DTO")
public class UserAddressUpdateCmd {

    @Schema(description = "收货地址ID" )
    private String id;

    @Schema(description = "收货人姓名" )
    private String receiverName;

    @Schema(description = "收货人电话" )
    private String receiverPhone;

    @Schema(description = "省份ID，关联地区表" )
    private Integer provinceId;

    @Schema(description = "城市ID，关联地区表" )
    private Integer cityId;

    @Schema(description = "区县ID，关联地区表" )
    private Integer districtId;

    @Schema(description = "详细地址" )
    private String detailAddress;

    @Schema(description = "默认地址 DISABLED 否 ENABLED 是")
    private String isDefault;

    @Schema(description = "地址标签，如家、公司、学校等" )
    private String addressTag;

}
