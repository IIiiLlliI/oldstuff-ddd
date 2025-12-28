package com.oldstuff.cola.utils;

import com.oldstuff.cola.dto.data.BusinessCode;
import com.oldstuff.cola.exception.BusinessException;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import io.jsonwebtoken.security.SignatureException;

import java.security.Key;
import java.util.Date;

public class JwtUtil {
    private static final String SECRET = "mySecretKey123456789012345678901234"; // 最少32字节
    private static final long EXPIRATION = 1000 * 60 * 60; // 1小时

    private static final Key key = Keys.hmacShaKeyFor(SECRET.getBytes());

    // 生成Token
    public static String generateToken(String id) {
        return Jwts.builder()
                .setSubject(id)
                .setIssuedAt(new Date())
                .setExpiration(new Date(System.currentTimeMillis() + EXPIRATION))
                .signWith(key)
                .compact();
    }

    // 解析Token
    public static String getUserID(String token) {
        try {
            return Jwts.parserBuilder()
                    .setSigningKey(key)
                    .build()
                    .parseClaimsJws(token)
                    .getBody()
                    .getSubject();
        } catch (ExpiredJwtException e) {
            throw new BusinessException(BusinessCode.USER_TOKEN_EXPIRED);
        } catch (JwtException e) {
            throw new BusinessException(BusinessCode.FAILED);
        }
    }
}
