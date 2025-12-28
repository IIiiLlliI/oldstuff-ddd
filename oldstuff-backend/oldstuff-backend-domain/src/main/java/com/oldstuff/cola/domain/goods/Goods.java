package com.oldstuff.cola.domain.goods;

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
@AllArgsConstructor
@Builder
public class Goods{

	private String id;
	private String userId;
	private Info info; 				// 商品信息
	private Stats stats; 			// 统计信息
	private AuditInfo auditInfo; 	// 审核信息
	private Status status; 			// 状态信息
	private LocalDateTime createAt;
	private LocalDateTime updateAt;

}
