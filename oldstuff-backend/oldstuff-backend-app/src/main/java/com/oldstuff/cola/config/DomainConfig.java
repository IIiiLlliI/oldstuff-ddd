package com.oldstuff.cola.config;

import com.oldstuff.cola.domain.user.gateway.UserGateway;
import com.oldstuff.cola.domain.user.service.UserDomainService;
import jakarta.validation.constraints.Email;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DomainConfig {

    @Bean
    public UserDomainService userDomainService(UserGateway userGateway) {
        return new UserDomainService(userGateway);
    }

}
