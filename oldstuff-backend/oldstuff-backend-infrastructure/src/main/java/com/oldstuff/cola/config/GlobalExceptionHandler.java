package com.oldstuff.cola.config;

import com.oldstuff.cola.dto.data.Result;
import com.oldstuff.cola.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    @ExceptionHandler(BusinessException.class)
    public Result ex(BusinessException ex) {
        log.error("发生业务异常：", ex);
        return new Result<>(ex.getBusinessCode());

    }

}

