package com.xinxi.config;

import java.lang.String;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.User;
import com.xinxi.service.impl.UserServiceImpl;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

public class CustomRealm extends AuthorizingRealm {
    @Autowired
    private UserServiceImpl userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("授权开始。。。。。。。。。");
        String phone = (String) SecurityUtils.getSubject().getPrincipal();
        System.out.println("phone == " + phone);
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        if (phone.equals("110120119")){
            HashSet<String> roles = new HashSet<>();
            roles.add("admin");
            info.setRoles(roles);
        }
        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println("开始认证。。。。");
        String phone = (String)token.getPrincipal();
        String password = new String((char[]) token.getCredentials());

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone",phone);
        User user = userService.getOne(queryWrapper);

        System.out.println("user === " + user);
        if (user == null){
            throw new AuthenticationException("手机号有误");
        }else if(!user.getPwd().equals(password) ){
            throw new AuthenticationException("密码错误");
        }else if (user.getDelCode() == 0){
            throw new AuthenticationException("对不起，您因违规操作已被平台屏蔽");
        }
        return new SimpleAuthenticationInfo(phone,password,getName());
    }
}
