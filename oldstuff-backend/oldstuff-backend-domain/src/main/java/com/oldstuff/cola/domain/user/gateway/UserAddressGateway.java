package com.oldstuff.cola.domain.user.gateway;

import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.dto.data.user.AddressMidInfoDTO;

public interface UserAddressGateway {

    void insert(String userID, String receiverName, String receiverPhone, String detailAddress, EnableStatus isDefault, String addressTag, AddressMidInfoDTO addressMidInfoDTO);

    void update(String userID, String id, String receiverName, String receiverPhone, String detailAddress, EnableStatus isDefault, String addressTag, AddressMidInfoDTO addressMidInfoDTO);

    void delete(String ids, String userID);
}
