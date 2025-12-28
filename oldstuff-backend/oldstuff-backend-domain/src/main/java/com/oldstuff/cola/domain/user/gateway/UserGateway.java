package com.oldstuff.cola.domain.user.gateway;

import com.oldstuff.cola.domain.user.User;

public interface UserGateway {

    User getByUsername(String username);
    User getByUseID(String userID);

    boolean matchPassword(String inputPassword, String storedPassword);

    String generateToken(User user);

    String encodePassword(String rawPassword);

    String genRandomName();

    void insert(User user);

    Boolean existByEmail(String email);
    Boolean existByPhone(String phone);
}
