package com.oldstuff.cola.user;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.oldstuff.cola.domain.user.enums.MerchantAuthStatus;
import com.oldstuff.cola.domain.user.enums.UserStatus;
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
@TableName("user")
@Schema(name = "User", description = "用户")
public class UserDO implements Serializable {
	private static final long serialVersionUID =  8706059972643656647L;

	@TableId(type = IdType.AUTO)
   	@Schema(description = "用户id")
	private String id;

   	@Schema(description = "账号")
	private String username;

   	@Schema(description = "手机号")
	private String phone;

   	@Schema(description = "密码")
	private String password;

   	@Schema(description = "邮箱")
	private String email;

   	@Schema(description = "用户名")
	private String name;

   	@Schema(description = "用户头像")
	private String avatar;

   	@Schema(description = "账号状态 DISABLED 封禁 NOT_ACTIVE 审核中 ACTIVE 激活")
	private UserStatus status;

   	@Schema(description = "最后登录时间")
	private LocalDateTime lastLogin;

   	@Schema(description = "最后回复时间")
	private LocalDateTime lastReply;

   	@Schema(description = "创建时间")
	private LocalDateTime createdAt;

   	@Schema(description = "更新时间")
	private LocalDateTime updatedAt;

   	@Schema(description = "成交订单")
	private Integer orderNum;

   	@Schema(description = "用户评分(0.0-10.0)")
	private Double score;

   	@Schema(description = "商家认证 DISABLED 未认证 REVIEWING 审核中 ACTIVE 认证")
	private MerchantAuthStatus merchantAuth;

}
