package com.xinxi.service;

import com.xinxi.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
public interface IUserService extends IService<User> {

    Page<User> findLastUsers(int pageNum,int pageSize);
}
