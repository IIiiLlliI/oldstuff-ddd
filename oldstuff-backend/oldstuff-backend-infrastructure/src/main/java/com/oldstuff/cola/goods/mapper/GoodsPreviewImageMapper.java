package com.oldstuff.cola.goods.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.oldstuff.pojo.entity.GoodsPreviewImage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface GoodsPreviewImageMapper extends BaseMapper<GoodsPreviewImage> {

    List<String> selectByGoodsId(Integer goodsId);

}
