package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.User;
import com.xinxi.mapper.UserMapper;
import com.xinxi.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Override
    public Page<User> findLastUsers(int pageNum,int pageSize) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.DATE,-1);
        Date yesterday = calendar.getTime();
        calendar.add(Calendar.DATE,-1);
        Date beforeYes = calendar.getTime();
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.in("create_time",simpleDateFormat.format(yesterday),
                simpleDateFormat.format(beforeYes),
                simpleDateFormat.format(new Date()));
        Page<User> userPage = new Page<>(pageNum,pageSize);
        Page<User> lastUsers = super.page(userPage, queryWrapper);
        return lastUsers;
    }
}
