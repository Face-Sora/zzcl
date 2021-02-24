package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.QQuestion;
import com.xinxi.mapper.QQuestionMapper;
import com.xinxi.service.IQQuestionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
@Service
public class QQuestionServiceImpl extends ServiceImpl<QQuestionMapper, QQuestion> implements IQQuestionService {

    @Override
    public Page<QQuestion> findByPage(Boolean science, Integer scale, Integer financing,
                                      Integer locans, Boolean trainPay,int pageNum,int pageSize) {
        QueryWrapper<QQuestion> questionQueryWrapper = new QueryWrapper<>();
        if (science != null)
            questionQueryWrapper.eq("science",science);
        if (scale != null)
            questionQueryWrapper.eq("scale",scale);
        if (financing != null)
            questionQueryWrapper.eq("financing",financing);
        if (locans != null)
            questionQueryWrapper.eq("locans",locans);
        if (trainPay != null)
            questionQueryWrapper.eq("train_pay",trainPay);
        Page<QQuestion> questions = super.page(new Page<QQuestion>(pageNum, pageSize), questionQueryWrapper);
        return questions;
    }
}
