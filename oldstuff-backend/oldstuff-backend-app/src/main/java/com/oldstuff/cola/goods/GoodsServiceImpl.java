package com.oldstuff.cola.goods;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.oldstuff.cola.api.GoodsServiceI;
import com.oldstuff.cola.api.OrderServiceI;
import com.oldstuff.cola.domain.goods.Goods;
import com.oldstuff.cola.domain.goods.gateway.GoodsGateway;
import com.oldstuff.cola.dto.data.PageDTO;
import com.oldstuff.cola.dto.data.goods.GoodsDTO;
import com.oldstuff.cola.dto.data.goods.GoodsListByMarketQry;
import com.oldstuff.cola.goods.mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;

@Service
public class GoodsServiceImpl implements GoodsServiceI {

    @Autowired
    GoodsGateway goodsGateway;

    @Autowired
    GoodsMapper goodsMapper;

    @Override
    public PageDTO<List<GoodsDTO>> getGoodsListByMarket(GoodsListByMarketQry qry) {
        List<GoodsDTO> result = goodsMapper.getGoodsListByMarket(qry.getName(), qry.getType(), qry.getCategoryId(), qry.getFinenessId(), qry.getMinPrice(), qry.getMaxPrice(), qry.getPriceSort(), qry.getCreateTimeSort(), qry.getLikeSort(),qry.getPage(), qry.getPageSize());
        return result;
    }
}
