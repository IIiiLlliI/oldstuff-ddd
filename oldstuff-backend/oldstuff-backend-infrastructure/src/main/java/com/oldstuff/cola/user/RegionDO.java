package com.oldstuff.cola.user;

import com.baomidou.mybatisplus.annotation.TableName;
import com.oldstuff.cola.domain.user.enums.RegionLevelStatus;
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
@TableName("region")
@Schema(name = "Region", description = "收货地区")
public class RegionDO implements Serializable {
	private static final long serialVersionUID =  2747297400523228100L;

   	@Schema(description = "区域id")
	private Integer id;

   	@Schema(description = "父级ID")
	private Integer parentId;

   	@Schema(description = "地区名称")
	private String regionName;

   	@Schema(description = "地区编码")
	private String regionCode;

   	@Schema(description = "地区级别 COUNTRY 国家 PROVINCE 省 CITY 市 DISTRICT 区县")
	private RegionLevelStatus regionLevel;

   	@Schema(description = "创建时间")
	private LocalDateTime createdAt;

   	@Schema(description = "更新时间")
	private LocalDateTime updatedAt;

}
