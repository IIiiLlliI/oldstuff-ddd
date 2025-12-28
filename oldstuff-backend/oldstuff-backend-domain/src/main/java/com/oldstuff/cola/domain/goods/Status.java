package com.oldstuff.cola.domain.goods;

import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.domain.common.enums.SoftDeleteStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsAuditStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsFinishStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Status {

    private GoodsAuditStatus auditStatus;
    private EnableStatus publishStatus;
    private SoftDeleteStatus deleteStatus;
    private GoodsFinishStatus finishStatus;

}
