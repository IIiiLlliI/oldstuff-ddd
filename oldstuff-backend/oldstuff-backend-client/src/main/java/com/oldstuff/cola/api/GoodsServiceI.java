package com.oldstuff.cola.api;

import com.oldstuff.cola.dto.data.PageDTO;
import com.oldstuff.cola.dto.data.goods.GoodsDTO;
import com.oldstuff.cola.dto.data.goods.GoodsListByMarketQry;

import java.util.List;

public interface GoodsServiceI {

    PageDTO<List<GoodsDTO>> getGoodsListByMarket(GoodsListByMarketQry qry);
}
