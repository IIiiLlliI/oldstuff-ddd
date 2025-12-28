package com.oldstuff.cola.user;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.oldstuff.cola.domain.common.enums.EnableStatus;
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
@TableName("user_address")
@Schema(name = "UserAddress", description = "收货地址")
public class UserAddressDO implements Serializable {
	private static final long serialVersionUID =  1319246822317613545L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "收货地址ID")
	private String id;

   	@Schema(description = "关联用户ID")
	private String userId;

   	@Schema(description = "收货人姓名")
	private String receiverName;

   	@Schema(description = "收货人电话")
	private String receiverPhone;

   	@Schema(description = "国家代码，如CN/US等")
	private String countryCode;

   	@Schema(description = "国家名称")
	private String country;

   	@Schema(description = "省份ID，关联地区表")
	private Integer provinceId;

   	@Schema(description = "省份名称")
	private String province;

   	@Schema(description = "城市ID，关联地区表")
	private Integer cityId;

   	@Schema(description = "城市名称")
	private String city;

   	@Schema(description = "区县ID，关联地区表")
	private Integer districtId;

   	@Schema(description = "区县名称")
	private String district;

   	@Schema(description = "详细地址")
	private String detailAddress;

   	@Schema(description = "默认地址 DISABLED 否 ENABLED 是")
	private EnableStatus isDefault;

   	@Schema(description = "地址标签，如家、公司、学校等")
	private String addressTag;

   	@Schema(description = "创建日期")
	private LocalDateTime createdAt;

   	@Schema(description = "更新日期")
	private LocalDateTime updatedAt;

}
