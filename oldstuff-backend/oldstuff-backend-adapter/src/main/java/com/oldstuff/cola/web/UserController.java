package com.oldstuff.cola.web;


import com.oldstuff.cola.api.UserServiceI;
import com.oldstuff.cola.dto.data.Result;
import com.oldstuff.cola.dto.data.user.*;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/user")
@Tag(name = "用户模块", description = "用户相关操作")
public class UserController {

    @Autowired
    UserServiceI userServiceI;

    @Operation(summary = "登录接口")
    @PostMapping("/login")
    public Result<String> login(@RequestBody UserLoginCmd userLoginCmd) {
        String token = userServiceI.login(userLoginCmd);
        return Result.success(token);
    }

    @Operation(summary = "获取登录状态")
    @GetMapping("/isLogin")
    public Result<String> isLogin() {
        return Result.success("已登录");
    }

    @Operation(summary = "获取用户信息")
    @GetMapping("/info/{id}")
    public Result<UserInfoDTO> getUserInfo(@PathVariable String id) {
        UserInfoDTO user = userServiceI.getUserInfo(id);
        return Result.success(user);
    }

    @Operation(summary = "邮箱注册")
    @PostMapping("/register/email")
    public Result<String> registerByEmail(@RequestBody UserEmailRegisterCmd userEmailRegisterCmd) {
        userServiceI.registerByEmail(userEmailRegisterCmd);
        return Result.success("注册成功");
    }

    @Operation(summary = "手机注册")
    @PostMapping("/register/phone")
    public Result<String> registerByPhone(@RequestBody UserPhoneRegisterCmd userPhoneRegisterCmd) {
        userServiceI.registerByPhone(userPhoneRegisterCmd);
        return Result.success("注册成功");
    }

    @Operation(summary = "修改用户信息")
    @PutMapping("")
    public Result<String> updateUserInfo(@RequestBody UserInfoUpdateCmd userInfoUpdateCmd, @AuthenticationPrincipal String usrID) {
        userServiceI.update(userInfoUpdateCmd, usrID);
        return Result.success();
    }

//    @Operation(summary = "商家认证")
//    @PostMapping("/merchant/auth")
//    public Result<String> authMerchant(@RequestBody MerchantAuthCreateCmd merchantAuthCreateCmd) {
//        // TODO 提交身份证照片、OCR识别信息、对接微警认证接口，成功后保存信息
//        Integer userId = authService.getUserId();
//        userServiceI.createMerchantAuth(merchantAuthCreateCmd, userId);
//        return Result.success("认证资料已提交，等待审核");
//    }

//    @Operation(summary = "商家认证资料编辑")
//    @PutMapping("/merchant/auth")
//    public Result<String> updateAuthMerchant(@RequestBody UserMerchantAuthDTO userMerchantAuthDTO) {
//        log.info("商家认证:{}", userMerchantAuthDTO);
//        Integer userId = authService.getUserId();
//        userServiceI.updateMerchantAuth(userMerchantAuthDTO, userId);
//        return Result.success("认证资料已修改，等待审核");
//    }
//
//    @Operation(summary = "商家认证资料查询")
//    @GetMapping("/merchant/auth")
//    public Result<UserMerchantAuth> getAuthMerchant() {
//        Integer userId = authService.getUserId();
//        UserMerchantAuth merchantAuth = userServiceI.getMerchantAuth(userId);
//        return Result.success(merchantAuth);
//    }

    @Operation(summary = "查询用户地址列表")
    @GetMapping("/address")
    public Result<List<UserAddressDTO>> getAddressList(@AuthenticationPrincipal String userID) {
        List<UserAddressDTO> userAddressDTOList = userServiceI.getAddressList(userID);
        return Result.success(userAddressDTOList);
    }

    @Operation(summary = "创建地址信息")
    @PostMapping("/address")
    public Result<String> createAddressInfo(@RequestBody UserAddressCreateCmd userAddressCreateCmd, @AuthenticationPrincipal String userID) {
        userServiceI.createAddress(userAddressCreateCmd, userID);
        return Result.success();
    }

    @Operation(summary = "修改地址信息")
    @PutMapping("/address")
    public Result<String> updateUserAddress(@RequestBody UserAddressUpdateCmd userAddressUpdateDTO, @AuthenticationPrincipal String userID) {
        userServiceI.updateAddress(userAddressUpdateDTO, userID);
        return Result.success();
    }

    @Operation(summary = "删除地址信息")
    @DeleteMapping("/address")
    public Result<String> deleteUserAddress(@RequestParam("ids") String ids, @AuthenticationPrincipal String userID) {
        userServiceI.delete(ids, userID);
        return Result.success();
    }

}

