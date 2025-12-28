package com.oldstuff.cola.domain.user.gateway;

import com.oldstuff.cola.domain.user.User;
import com.oldstuff.cola.dto.data.user.AddressMidInfoDTO;

public interface RegionGateway {

    AddressMidInfoDTO verifyAndTransIdToName(AddressMidInfoDTO addressMidInfoDTO);

}
