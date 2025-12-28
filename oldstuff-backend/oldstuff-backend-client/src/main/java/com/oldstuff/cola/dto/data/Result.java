package com.oldstuff.cola.dto.data;

import java.io.Serializable;

public class Result<T> implements Serializable {

    public Integer code;
    public String msg;
    public T data;

    public Result() {}

    public Result(BusinessCode businessCode) {
        this.code = businessCode.getCode();
        this.msg = businessCode.getMessage();
    }

    public Result(BusinessCode businessCode, T object) {
        this.code = businessCode.getCode();
        this.msg = businessCode.getMessage();
        this.data = object;
    }

    public static <T> Result<T> success() {
        Result<T> result = new Result<>();
        result.code = BusinessCode.SUCCESS.getCode();
        result.msg = BusinessCode.SUCCESS.getMessage();
        return result;
    }

    public static <T> Result<T> success(T object) {
        Result<T> result = new Result<>();
        result.code = BusinessCode.SUCCESS.getCode();
        result.msg = BusinessCode.SUCCESS.getMessage();
        result.data = object;
        return result;
    }

    public static <T> Result<T> failed() {
        Result<T> result = new Result<T>();
        result.code = BusinessCode.FAILED.getCode();
        result.msg = BusinessCode.FAILED.getMessage();
        return result;
    }

}
