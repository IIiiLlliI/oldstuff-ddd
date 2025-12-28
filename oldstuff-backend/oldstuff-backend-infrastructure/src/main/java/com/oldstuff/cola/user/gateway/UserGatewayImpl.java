package com.oldstuff.cola.user.gateway;

import com.oldstuff.cola.domain.user.*;
import com.oldstuff.cola.domain.user.gateway.UserGateway;
import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.exception.BusinessException;
import com.oldstuff.cola.user.UserDO;
import com.oldstuff.cola.user.mapper.UserMapper;
import com.oldstuff.cola.utils.GenRandomNameUtil;
import com.oldstuff.cola.utils.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class UserGatewayImpl implements UserGateway {

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    UserMapper userMapper;

    private User userDOToUser(UserDO userDO) {
        return new User(
                userDO.getId(),
                new Account(userDO.getUsername(), userDO.getPassword(), userDO.getPhone(), userDO.getEmail()),
                new Profile(userDO.getName(), userDO.getAvatar(), userDO.getMerchantAuth()),
                new Status(userDO.getStatus(), userDO.getLastLogin(), userDO.getLastReply()),
                new Stats(userDO.getOrderNum(), userDO.getScore()),
                userDO.getCreatedAt(),
                userDO.getUpdatedAt(),
                null
        );
    }

    @Override
    public User getByUsername(String username) {
        UserDO userDO = userMapper.getByUsername(username);
        if (userDO == null) {
            throw new BusinessException(BusinessCode.USER_NOT_FOUND);
        }
        return userDOToUser(userDO);
    }

    @Override
    public User getByUseID(String userID) {
        UserDO userDO = userMapper.selectById(userID);
        if (userDO == null) {
            throw new BusinessException(BusinessCode.USER_NOT_FOUND);
        }
        return userDOToUser(userDO);
    }

    @Override
    public boolean matchPassword(String inputPassword, String storedPassword) {
        passwordEncoder.encode(inputPassword);
        return passwordEncoder.matches(inputPassword, storedPassword);
    }

    @Override
    public String generateToken(User user) {
        return JwtUtil.generateToken(user.getId());
    }

    @Override
    public String encodePassword(String rawPassword) {
        return passwordEncoder.encode(rawPassword);
    }

    @Override
    public String genRandomName() {
        return GenRandomNameUtil.genRandomName();
    }

    @Override
    public void insert(User user) {
        UserDO userDO = UserDO.builder()
                .id(user.getId())
                .username(user.getAccount().getUsername())
                .password(user.getAccount().getPassword())
                .phone(user.getAccount().getPhone())
                .email(user.getAccount().getEmail())
                .name(user.getProfile().getName())
                .avatar(user.getProfile().getAvatar())
                .merchantAuth(user.getProfile().getMerchantAuth())
                .status(user.getStatus().getStatus())
                .lastLogin(user.getStatus().getLastLogin())
                .lastReply(user.getStatus().getLastReply())
                .orderNum(user.getStats().getOrderNum())
                .score(user.getStats().getScore())
                .createdAt(user.getCreatedAt())
                .updatedAt(user.getUpdatedAt())
                .build();

        userMapper.insert(userDO);
    }

    @Override
    public Boolean existByEmail(String email) {
        return userMapper.existsByEmail(email);
    }

    @Override
    public Boolean existByPhone(String phone) {
        return userMapper.existsByPhone(phone);
    }

}
