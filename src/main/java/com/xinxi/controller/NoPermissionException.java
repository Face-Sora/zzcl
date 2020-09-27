package com.xinxi.controller;


import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class NoPermissionException {

    @ExceptionHandler(UnauthorizedException.class)
    public String handleShiroException(Exception ex) {
        return "login";
    }

    @ExceptionHandler(AuthorizationException.class)
    public String AuthorizationException(Exception ex) {
        return "login";
    }
}
