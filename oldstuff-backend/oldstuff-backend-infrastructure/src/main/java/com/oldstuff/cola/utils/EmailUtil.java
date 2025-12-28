package com.oldstuff.cola.utils;

import org.springframework.boot.autoconfigure.mail.MailProperties;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class EmailUtil {

    JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();
    String formEmail;

    public EmailUtil(MailProperties mailProperties) {
        this.javaMailSender.setHost(mailProperties.getHost());
        this.javaMailSender.setPort(mailProperties.getPort());
        this.javaMailSender.setUsername(mailProperties.getUsername());
        this.javaMailSender.setPassword(mailProperties.getPassword());
        this.formEmail = mailProperties.getUsername();

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", true);
        properties.put("mail.smtp.starttls.enable", true);
        properties.put("mail.smtp.starttls.required", true);

        javaMailSender.setJavaMailProperties(properties);
    }

    public void sendRegisterEmail(String email, String code) {
        String link = "http://47.119.21.115:48080/user/register/verify?code=" + code;
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(formEmail);
        message.setTo(email);
        message.setSubject("旧物圈-账号校验");
        message.setText("点击链接，验证你的邮箱: " + link);
        javaMailSender.send(message);
    }

}
