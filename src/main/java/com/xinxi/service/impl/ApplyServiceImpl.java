package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Apply;
import com.xinxi.entity.Need;
import com.xinxi.entity.User;
import com.xinxi.mapper.ApplyMapper;
import com.xinxi.service.IApplyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xinxi.service.INeedService;
import com.xinxi.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-09-11
 */
@Service
public class ApplyServiceImpl extends ServiceImpl<ApplyMapper, Apply> implements IApplyService {

    @Autowired
    IUserService iUserService;

    @Autowired
    INeedService iNeedService;

    public boolean save(Apply apply){
        Integer needId = apply.getNeedId();
        Need need = iNeedService.getOne(new QueryWrapper<Need>().eq("id", needId));
        apply.setNeed(need);
        if (super.save(apply)){
            return true;
        }
        return false;
    }


    @Override
    public Apply findByNeedIdAndApplicantId(int needId, Long id) {
        QueryWrapper<Apply> applyQueryWrapper = new QueryWrapper<>();
        applyQueryWrapper.eq("need_id",needId);
        applyQueryWrapper.eq("applicant_id",id);
        Apply apply = this.getOne(applyQueryWrapper);
        return apply;
    }

    public Page page(int pageNum, int pageSize){
        Page<Apply> applys = super.page(new Page<Apply>(pageNum, pageSize));
        for (Apply apply:applys.getRecords()) {
            Integer needId = apply.getNeedId();
            Need need = iNeedService.getOne(new QueryWrapper<Need>().eq("id", needId));
            Long userId = need.getUserId();
            User user = iUserService.getOne(new QueryWrapper<User>().eq("id", userId));
            need.setUser(user);
            apply.setNeed(need);

            Long applicantId = apply.getApplicantId();
            System.out.println("applicantId ======== " + applicantId);
            User applicant = iUserService.getOne(new QueryWrapper<User>().eq("id", applicantId));
            apply.setApplicant(applicant);
        }
        return applys;
    }
}
