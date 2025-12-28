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
@TableName("order_return_reason")
@Schema(name = "OrderReturnReason", description = "null")
public class OrderReturnReason  implements Serializable {
	private static final long serialVersionUID =  1105985591402123008L;

	/**
	 * 退款类型id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "退款类型id")
	private Integer id;

	/**
	 * 退款类型
	 */
   	@Schema(description = "退款类型")
	private String name;

	/**
	 * 类型状态 0 不启用 1 启用
	 */
   	@Schema(description = "类型状态 0 不启用 1 启用")
	private Integer status;

	/**
	 * 创建时间
	 */
   	@Schema(description = "创建时间")
	private LocalDateTime createTime;

}
