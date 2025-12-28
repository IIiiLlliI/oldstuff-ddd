package com.oldstuff.cola.domain.goods;

import com.oldstuff.cola.domain.goods.enums.GoodsType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class Stats {
    private Integer views;
    private Integer likes;
}
