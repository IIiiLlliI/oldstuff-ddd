package com.oldstuff.cola.web;

import com.oldstuff.cola.api.GoodsServiceI;
import com.oldstuff.cola.api.UserServiceI;
import com.oldstuff.cola.dto.data.PageDTO;
import com.oldstuff.cola.dto.data.Result;
import com.oldstuff.cola.dto.data.goods.*;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/goods")
@Slf4j
@Tag(name = "商品模块", description = "商品信息")
public class GoodsController {

    @Autowired
    GoodsServiceI goodsServiceI;

    @Autowired
    UserServiceI userServiceI;

    @Operation(summary = "市场条件获取商品列表")
    @GetMapping("")
    public Result<PageDTO<List<GoodsDTO>>> getGoodsListByMarket(GoodsListByMarketQry qry) {
        PageDTO<List<GoodsDTO>> list = goodsServiceI.getGoodsListByMarket(qry);
        return Result.success(list);
    }

    @Operation(summary = "获取商品详情")
    @GetMapping("/{goodsId}")
    public Result<GoodsDTO> getDetail(@PathVariable Integer goodsId) {
        GoodsDTO detail = goodsServiceI.getDetail(goodsId);
        return Result.success(detail);
    }

    @Operation(summary = "获取用户上传商品列表")
    @GetMapping("/self")
    public Result<PageDTO<List<GoodsSelfVO>>> getSelfList(GoodsListByMarketQry goodsListByMarketQry) {
        goodsListByMarketQry.setUserId(authService.getUserIdAndVerifyMerchantAuth());
        PageDTO<List<GoodsSelfVO>> list = goodsServiceI.getSelfList(goodsListByMarketQry);
        return Result.success(list);
    }

    @Operation(summary = "随机获取商品信息")
    @GetMapping("/rand")
    public Result<List<GoodsRandomVO>> getRandom() {
        List<GoodsRandomVO> list = goodsServiceI.getRandom();
        return Result.success(list);
    }

    @Operation(summary = "新增商品")
    @PostMapping("")
    public Result create(@RequestBody GoodsInfoDTO goodsInfoDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        goodsServiceI.create(goodsInfoDTO, userId);
        return Result.success();
    }

    @Operation(summary = "下架商品")
    @PutMapping("/off/{goodsId}")
    public Result off(@PathVariable Integer goodsId) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        goodsServiceI.off(goodsId, userId);
        return Result.success();
    }

    @Operation(summary = "上架商品")
    @PutMapping("/on/{goodsId}")
    public Result on(@PathVariable Integer goodsId) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        GoodsReplenishDTO goodsReplenishDTO = GoodsReplenishDTO.builder().goodsId(goodsId).build();
        goodsServiceI.replenish(goodsReplenishDTO, userId);
        return Result.success();
    }

    @Operation(summary = "商品补货")
    @PutMapping("/replenish")
    public Result replenish(@RequestBody GoodsReplenishDTO goodsReplenishDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        goodsServiceI.replenish(goodsReplenishDTO, userId);
        return Result.success();
    }

    @Operation(summary = "修改商品信息")
    @PutMapping("/{oldGoodsId}")
    public Result update(@PathVariable Integer oldGoodsId, @RequestBody GoodsInfoDTO goodsInfoDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        goodsServiceI.updateAndSubmitToAudit(goodsInfoDTO, oldGoodsId, userId);
        return Result.success();
    }

    @Operation(summary = "删除商品")
    @DeleteMapping("/{goodsId}")
    public Result delete(@PathVariable Integer goodsId) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        goodsServiceI.delete(goodsId, userId);
        return Result.success();
    }

    @Operation(summary = "获取商品成色信息")
    @GetMapping("/fineness")
    public Result<List<GoodsFineness>> getFineness() {
        List<GoodsFineness> list = goodsFinenessService.getList();
        return Result.success(list);
    }

    @Operation(summary = "获取商品分类信息")
    @GetMapping("/category")
    public Result<List<GoodsCategory>> getCategory() {
        List<GoodsCategory> list = goodsCategoryService.getList();
        return Result.success(list);
    }

}
