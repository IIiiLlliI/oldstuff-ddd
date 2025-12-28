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
@TableName("admin")
@Schema(name = "Admin", description = "null")
public class Admin  implements Serializable {
	private static final long serialVersionUID =  7956687225162958489L;

	/**
	 * 后台用户id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "后台用户id")
	private Integer id;

	/**
	 * 账号
	 */
   	@Schema(description = "账号")
	private String username;

	/**
	 * 密码
	 */
   	@Schema(description = "密码")
	private String password;

	/**
	 * 角色 0 管理员
	 */
   	@Schema(description = "角色 0 管理员")
	private String role;

	/**
	 * 创建时间
	 */
   	@Schema(description = "创建时间")
	private LocalDateTime createTime;

	/**
	 * 更新时间
	 */
   	@Schema(description = "更新时间")
	private LocalDateTime updateTime;

}
