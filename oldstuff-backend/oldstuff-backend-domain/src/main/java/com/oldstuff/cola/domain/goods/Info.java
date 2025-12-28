package com.oldstuff.cola.domain.goods;

import com.oldstuff.cola.domain.common.enums.EnableStatus;
import com.oldstuff.cola.domain.goods.enums.GoodsType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
@Builder
public class Info {
    private String name;
    private GoodsType type;
    private Integer categoryId;
    private Integer finenessId;
    private String poster;
    private Double price;
    private Double originalPrice;
    private String description;
    private String want;
    private Integer nums;
    private EnableStatus freeShip;
    private Integer deliveryProvinceId;
    private List<PreviewImage> previewImageList;
}
