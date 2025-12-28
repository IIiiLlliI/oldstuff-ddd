package com.oldstuff.cola.domain.user;

import com.oldstuff.cola.domain.user.enums.MerchantAuthStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class Profile {
    private String name;
    private String avatar;
    private MerchantAuthStatus merchantAuth;
}
