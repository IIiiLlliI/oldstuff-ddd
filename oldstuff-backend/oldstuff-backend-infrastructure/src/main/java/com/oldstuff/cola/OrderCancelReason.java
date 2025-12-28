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
@TableName("order_cancel_reason")
@Schema(name = "OrderCancelReason", description = "null")
public class OrderCancelReason  implements Serializable {
	private static final long serialVersionUID =  9090627796820074271L;

	/**
	 * 取消类型id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "取消类型id")
	private Integer id;

	/**
	 * 取消类型
	 */
   	@Schema(description = "取消类型")
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
