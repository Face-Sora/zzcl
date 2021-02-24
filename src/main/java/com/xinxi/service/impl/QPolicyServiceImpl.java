package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.QIntellectualProperty;
import com.xinxi.entity.QPolicy;
import com.xinxi.entity.QQuestionPolicy;
import com.xinxi.entity.QQuestionPolicy;
import com.xinxi.mapper.QPolicyMapper;
import com.xinxi.service.IQPolicyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
@Service
public class QPolicyServiceImpl extends ServiceImpl<QPolicyMapper, QPolicy> implements IQPolicyService {

    @Override
    public List<String> findNames(List<QQuestionPolicy> qps) {
        ArrayList<String> policyNames = new ArrayList<>();
        for (QQuestionPolicy qp:qps) {
            Integer policyId = qp.getPolicyId();
            QueryWrapper<QPolicy> qw = new QueryWrapper<>();
            qw.eq("id",policyId);
            QPolicy one = super.getOne(qw);
            policyNames.add(one.getPolicy());
        }
        return policyNames;
    }
}
