package com.oldstuff.cola.web;

import com.oldstuff.pojo.dto.*;
import com.oldstuff.pojo.entity.LogisticsCompany;
import com.oldstuff.pojo.entity.OrderCancelReason;
import com.oldstuff.pojo.entity.OrderReturnReason;
import com.oldstuff.pojo.vo.OrderCreateVO;
import com.oldstuff.pojo.vo.OrderVO;
import com.oldstuff.pojo.vo.PageVO;
import com.oldstuff.pojo.vo.Result;
import com.oldstuff.service.AuthService;
import com.oldstuff.service.OrderService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
@Slf4j
@Tag(name = "订单模块", description = "订单创建、状态更新")
public class OrderController {

    @Autowired
    OrderService orderService;

    @Operation(summary = "查询购买订单")
    @GetMapping("/buy")
    public Result<PageVO<List<OrderVO>>> getForBuy(OrderListQueryDTO orderListQueryDTO) {
        Integer userId = authService.getUserId();
        PageVO<List<OrderVO>> orderVO = orderService.getForBuy(orderListQueryDTO, userId);
        return Result.success(orderVO);
    }

    @Operation(summary = "查询出售订单")
    @GetMapping("/sell")
    public Result<PageVO<List<OrderVO>>> getForSell(OrderListQueryDTO orderListQueryDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        PageVO<List<OrderVO>> orderVO = orderService.getForSell(orderListQueryDTO, userId);
        return Result.success(orderVO);
    }

    // TODO 应该再提供创建换物订单的接口
    @Operation(summary = "创建购买订单")
    @PostMapping()
    public Result<OrderCreateVO> create(OrderCreateDTO orderCreateDTO) {
        Integer userId = authService.getUserId();
        OrderCreateVO orderCreateVO = orderService.create(orderCreateDTO, userId);
        return Result.success(orderCreateVO);
    }

    @Operation(summary = "买家删除订单")
    @DeleteMapping("/delete/buy")
    public Result deleteByCustomer(@RequestParam("ids") String ids) {
        Integer userId = authService.getUserId();
        orderService.delete(ids, userId, 0);
        return Result.success();
    }

    @Operation(summary = "卖家删除订单")
    @DeleteMapping("/delete/sell")
    public Result deleteByMerchant(@RequestParam("ids") String ids) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        orderService.delete(ids, userId, 1);
        return Result.success();
    }

    @Operation(summary = "买家取消订单")
    @PutMapping("/cancel/buy")
    public Result cancelByCustomer(@RequestBody OrderCancelDTO orderCancelDTO) {
        Integer userId = authService.getUserId();
        orderService.cancel(orderCancelDTO, userId, 0);
        return Result.success();
    }

    @Operation(summary = "卖家取消订单")
    @PutMapping("/cancel/sell")
    public Result cancelByMerchant(@RequestBody OrderCancelDTO orderCancelDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        orderService.cancel(orderCancelDTO, userId, 1);
        return Result.success();
    }

    @Operation(summary = "支付订单")
    @PutMapping("/pay/{orderId}")
    public Result pay(@PathVariable Integer orderId) {
        Integer userId = authService.getUserId();
        orderService.pay(orderId, userId);
        return Result.success();
    }

    @Operation(summary = "订单发货")
    @PutMapping("/delivery")
    public Result delivery(@RequestBody OrderDeliveryDTO orderDeliveryDTO) {
        Integer userId = authService.getUserIdAndVerifyMerchantAuth();
        orderService.delivery(orderDeliveryDTO, userId);
        return Result.success();
    }

    @Operation(summary = "确认收货")
    @PutMapping("/confirm/{orderId}")
    public Result confirm(@PathVariable Integer orderId) {
        Integer userId = authService.getUserId();
        orderService.confirm(orderId, userId);
        return Result.success();
    }

    @Operation(summary = "申请退货")
    @PutMapping("/apply/return")
    public Result applyReturn(@RequestBody OrderReturnDTO orderReturnDTO) {
        Integer userId = authService.getUserId();
        orderService.applyReturn(orderReturnDTO, userId);
        return Result.success();
    }

    @Operation(summary = "查询取消原因类别")
    @GetMapping("/cancel")
    public Result<List<OrderCancelReason>> getCancelReason() {
        List<OrderCancelReason> cancelReason = orderService.getCancelReason();
        return Result.success(cancelReason);
    }

    @Operation(summary = "查询退款原因类别")
    @GetMapping("/return")
    public Result<List<OrderReturnReason>> getReturnReason() {
        List<OrderReturnReason> cancelReason = orderService.getReturnReason();
        return Result.success(cancelReason);
    }

    @Operation(summary = "查询物流公司")
    @GetMapping("/company")
    public Result<List<LogisticsCompany>> getLogisticsCompany(String companyName) {
        List<LogisticsCompany> logisticsCompanies = orderService.getLogisticsCompany(companyName);
        return Result.success(logisticsCompanies);
    }

}
