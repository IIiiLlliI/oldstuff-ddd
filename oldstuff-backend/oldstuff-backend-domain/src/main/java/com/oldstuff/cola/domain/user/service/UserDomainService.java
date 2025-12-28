package com.oldstuff.cola.domain.user.service;

import com.oldstuff.cola.domain.user.gateway.UserGateway;

public class UserDomainService {

    UserGateway userGateway;

    public UserDomainService(UserGateway userGateway) {
        this.userGateway = userGateway;
    }

}
