package com.oldstuff.cola.domain.user;

import com.oldstuff.cola.domain.user.enums.UserStatus;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.exception.BusinessException;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
public class Status {
    private UserStatus status;
    private LocalDateTime lastLogin;
    private LocalDateTime lastReply;

    public void checkUserActive() {
        if (status.equals(UserStatus.NOT_ACTIVE)) {
            throw new BusinessException(BusinessCode.USER_NOT_ACTIVE);
        }
        else if (status.equals(UserStatus.DISABLED)) {
            throw new BusinessException(BusinessCode.USER_DISABLED);
        }
    }
}
