package com.oldstuff.cola.exception;

import com.oldstuff.cola.dto.data.BusinessCode;
import lombok.Getter;

@Getter
public class BusinessException extends RuntimeException {
    private final BusinessCode businessCode;

    public BusinessException(BusinessCode businessCode) {
        super(businessCode.getMessage());
        this.businessCode = businessCode;
    }

}
