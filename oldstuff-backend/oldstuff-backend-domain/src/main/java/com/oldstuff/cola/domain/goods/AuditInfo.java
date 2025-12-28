package com.oldstuff.cola.domain.goods;

import com.oldstuff.cola.domain.goods.enums.GoodsAuditStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class AuditInfo {

    private Integer auditUser;
    private String rejectReason;

}
