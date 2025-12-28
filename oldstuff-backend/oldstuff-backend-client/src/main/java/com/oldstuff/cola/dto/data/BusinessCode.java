package com.oldstuff.cola.dto.data;

import lombok.Getter;

@Getter
public enum BusinessCode {
    // 通用模块
    SUCCESS(0, "操作成功"),
    FAILED(1, "操作失败，请联系管理员"),
    PARAMS_ERROR(2, "参数错误"),

    // 用户模块
    USER_NOT_FOUND(1001, "用户不存在"),
    USER_ALREADY_EXISTS(1002, "用户已存在"),
    USER_PASSWORD_ERROR(1003, "用户名或密码错误"),
    USER_DISABLED(1004, "用户被封禁"),
    USER_NOT_LOGIN(1005, "用户未登录"),
    USER_TOKEN_EXPIRED(1006, "用户登录已过期"),
    USER_NOT_ACTIVE(1007, "账号未激活"),
    USER_CODE_ERROR(1008, "验证码错误"),
    REGION_INFO_ERROR(1009, "地址区域信息错误"),
    USER_ADDRESS_NOT_FOUND(1010, "操作的地址信息不存在");



    private final int code;
    private final String message;

    BusinessCode(int code, String message) {
        this.code = code;
        this.message = message;
    }
}

