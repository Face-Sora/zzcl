package com.xinxi.config;

import java.lang.String;
import java.util.HashMap;
import java.util.List;

import com.xinxi.entity.User;
import com.xinxi.service.impl.UserServiceImpl;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;

public class CustomRealm extends AuthorizingRealm {
    @Autowired
    private UserServiceImpl userService;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String phone = (String)token.getPrincipal();
        String password = new String((char[]) token.getCredentials());
        HashMap<String, Object> map = new HashMap<>();
        map.put("phone",phone);
        List<User> users = userService.listByMap(map);
        User user = null;
        if (users.size() > 0)
            user = users.get(0);
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
