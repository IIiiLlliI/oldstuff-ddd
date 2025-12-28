package com.oldstuff.cola.goods.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.oldstuff.cola.dto.data.goods.CreatetimeSortEnum;
import com.oldstuff.cola.dto.data.goods.GoodsDTO;
import com.oldstuff.cola.dto.data.goods.LikeSortEnum;
import com.oldstuff.cola.dto.data.goods.PriceSortEnum;
import com.oldstuff.cola.goods.GoodsDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsMapper extends BaseMapper<GoodsDO> {

//    List<GoodsRandomVO> getRandom();

    List<GoodsDTO> getGoodsListByMarket(String name, String type, Integer categoryId, Integer finenessId, Integer minPrice, Integer maxPrice, PriceSortEnum priceSort, CreatetimeSortEnum createTimeSort, LikeSortEnum likeSort, Integer page, Integer pageSize);
}

