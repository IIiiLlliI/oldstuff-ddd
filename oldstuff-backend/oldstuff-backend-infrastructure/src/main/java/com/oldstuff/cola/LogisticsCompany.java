package com.oldstuff.cola;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @Description  
 * @Author  IIiiLlliI 
 * @Date 2025-04-16 
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@TableName("logistics_company")
@Schema(name = "LogisticsCompany", description = "null")
public class LogisticsCompany  implements Serializable {
	private static final long serialVersionUID =  6161178609804796827L;

	/**
	 * 快递公司id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "快递公司id")
	private Integer id;

	/**
	 * 公司名
	 */
   	@Schema(description = "公司名")
	private String name;

	/**
	 * 公司编码
	 */
   	@Schema(description = "公司编码")
	private String code;

	/**
	 * 公司类型
	 */
   	@Schema(description = "公司类型")
	private String type;

}
