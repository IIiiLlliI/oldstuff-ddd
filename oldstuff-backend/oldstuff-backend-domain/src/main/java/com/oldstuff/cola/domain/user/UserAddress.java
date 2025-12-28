package com.oldstuff.cola.domain.user;

import com.oldstuff.cola.domain.common.enums.EnableStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@Builder
@AllArgsConstructor
public class UserAddress {

	private String id;
	private String userId;
	private String receiverName;
	private String receiverPhone;
	private String countryCode;
	private String country;
	private Integer provinceId;
	private String province;
	private Integer cityId;
	private String city;
	private Integer districtId;
	private String district;
	private String detailAddress;
	private EnableStatus isDefault;
	private String addressTag;
	private LocalDateTime createdAt;
	private LocalDateTime updatedAt;

}
