package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Need;
import com.xinxi.entity.NeedType;
import com.xinxi.entity.User;
import com.xinxi.mapper.NeedMapper;
import com.xinxi.service.INeedService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xinxi.service.INeedTypeService;
import com.xinxi.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 需求表 服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Service
public class NeedServiceImpl extends ServiceImpl<NeedMapper, Need> implements INeedService {

    @Autowired
    INeedTypeService needTypeService;

    @Autowired
    IUserService userService;

    public List<Need> findByUserId(Long userId){
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("user_id",userId);
        List<Need> needs = super.list(needQueryWrapper);
        for (Need need:needs) {
            Long classify = need.getClassify();
            QueryWrapper<NeedType> needTypeQueryWrapper = new QueryWrapper<>();
            needTypeQueryWrapper.eq("id",classify);
            NeedType type = needTypeService.getOne(needTypeQueryWrapper);
            need.setNeedType(type);
        }
        return needs;
    }

    public List<Need> list(){
        List<Need> needs = super.list();
        for (Need need:needs) {
            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);

            Long workerId = need.getWorkerId();
            queryWrapper.clear();
            queryWrapper.eq("id",workerId);
            User worker = userService.getOne(queryWrapper);
            need.setWorker(worker);
        }
        return needs;
    }

    public Page<Need> listToPage(int pageNum,int pageSize){
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("status",'y');
        Page<Need> needs = super.page(new Page<Need>(pageNum, pageSize),needQueryWrapper);
        for (Need need:needs.getRecords()) {
            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);

            Long workerId = need.getWorkerId();
            queryWrapper.clear();
            queryWrapper.eq("id",workerId);
            User worker = userService.getOne(queryWrapper);
            need.setWorker(worker);
        }
        return needs;
    }

    @Override
    public Page<Need> findNNeeds(int pageNum, int pageSize) {
        Page<Need> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("status",'n');
        Page<Need> needs = super.page(page, needQueryWrapper);
        for (Need need:needs.getRecords()) {
            Long classify = need.getClassify();
            QueryWrapper<NeedType> needTypeQueryWrapper = new QueryWrapper<>();
            needTypeQueryWrapper.eq("id",classify);
            NeedType type = needTypeService.getOne(needTypeQueryWrapper);
            need.setNeedType(type);

            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);
        }
        return needs;
    }

    @Override
    public Page<Need> findYNeeds(int pageNum, int pageSize) {
        Page<Need> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("status",'y');
        Page<Need> needs = super.page(page, needQueryWrapper);
        for (Need need:needs.getRecords()) {
            Long classify = need.getClassify();
            QueryWrapper<NeedType> needTypeQueryWrapper = new QueryWrapper<>();
            needTypeQueryWrapper.eq("id",classify);
            NeedType type = needTypeService.getOne(needTypeQueryWrapper);
            need.setNeedType(type);

            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);

            Long workerId = need.getWorkerId();
            queryWrapper.clear();
            queryWrapper.eq("id",workerId);
            User worker = userService.getOne(queryWrapper);
            need.setWorker(worker);

            Character progress = need.getProgress();
            if (progress != null){
                if (progress == 'w'){
                    need.setProgressStr("未接单");
                }else if (progress == 'i'){
                    need.setProgressStr("进行中");
                }else if (progress == 'f'){
                    need.setProgressStr("已完成");
                }
            } else {
                need.setProgressStr("");
            }
        }
        return needs;
    }

    @Override
    public Page<Need> findYNeedsByUserPhone(String phone,int pageNum,int pageSize) {
        Page<Need> page = new Page<>(pageNum, pageSize);
        QueryWrapper<User> queryWrapper1 = new QueryWrapper<>();
        queryWrapper1.eq("phone",phone);
        User u = userService.getOne(queryWrapper1);
        Long uid = u.getId();
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("status",'y');
        needQueryWrapper.eq("user_id",uid);
        Page<Need> needs = super.page(page, needQueryWrapper);
        for (Need need:needs.getRecords()) {
            Long classify = need.getClassify();
            QueryWrapper<NeedType> needTypeQueryWrapper = new QueryWrapper<>();
            needTypeQueryWrapper.eq("id",classify);
            NeedType type = needTypeService.getOne(needTypeQueryWrapper);
            need.setNeedType(type);

            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);

            Long workerId = need.getWorkerId();
            queryWrapper.clear();
            queryWrapper.eq("id",workerId);
            User worker = userService.getOne(queryWrapper);
            need.setWorker(worker);

            Character progress = need.getProgress();
            if (progress != null){
                if (progress == 'w'){
                    need.setProgressStr("未接单");
                }else if (progress == 'i'){
                    need.setProgressStr("进行中");
                }else if (progress == 'f'){
                    need.setProgressStr("已完成");
                }
            } else {
                need.setProgressStr("");
            }
        }
        return needs;
    }

    public List<Need> findByWorkerId(Long workerId){
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("worker_id",workerId);
        List<Need> needs = super.list(needQueryWrapper);
        for (Need need:needs) {
            Long classify = need.getClassify();
            QueryWrapper<NeedType> needTypeQueryWrapper = new QueryWrapper<>();
            needTypeQueryWrapper.eq("id",classify);
            NeedType type = needTypeService.getOne(needTypeQueryWrapper);
            need.setNeedType(type);

            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);
        }
        return needs;
    }

    @Override
    public Page<Need> findByClassifyToPage(int pageNum, int pageSize, Long classify) {
        Page<Need> page = new Page<>(pageNum, pageSize);
        QueryWrapper<Need> needQueryWrapper = new QueryWrapper<>();
        needQueryWrapper.eq("classify",classify);
        needQueryWrapper.eq("status",'y');
        Page<Need> needs = super.page(page, needQueryWrapper);

        for (Need need:needs.getRecords()) {
            Long userId = need.getUserId();
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",userId);
            User user = userService.getOne(queryWrapper);
            need.setUser(user);
        }
        return needs;
    }
}
