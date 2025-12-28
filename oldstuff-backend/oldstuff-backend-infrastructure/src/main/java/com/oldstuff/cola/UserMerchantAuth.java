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
@TableName("user_merchant_auth")
@Schema(name = "UserMerchantAuth", description = "商家认证信息")
public class UserMerchantAuth  implements Serializable {
	private static final long serialVersionUID =  4095342136575946941L;

	/**
	 * 商家认证资料id
	 */
	@TableId(type = IdType.AUTO)
   	@Schema(description = "商家认证资料id")
	private Integer id;

	/**
	 * 用户id
	 */
   	@Schema(description = "用户id")
	private Integer userId;

	/**
	 * 真实姓名
	 */
   	@Schema(description = "真实姓名")
	private String realName;

	/**
	 * 身份证号
	 */
   	@Schema(description = "身份证号")
	private String idCard;

	/**
	 * 身份证正面
	 */
   	@Schema(description = "身份证正面")
	private String idCardFront;

	/**
	 * 身份证背面
	 */
   	@Schema(description = "身份证背面")
	private String idCardBackend;

	/**
	 * 审核状态 0 待审核 1 驳回 2 通过
	 */
   	@Schema(description = "审核状态 0 待审核 1 驳回 2 通过")
	private Integer auditStatus;

	/**
	 * 驳回理由
	 */
   	@Schema(description = "驳回理由")
	private String rejectReason;

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
