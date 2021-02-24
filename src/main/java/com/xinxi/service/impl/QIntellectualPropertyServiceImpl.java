package com.xinxi.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.xinxi.entity.QIntellectualProperty;
import com.xinxi.entity.QQuestionIntellectualProperty;
import com.xinxi.mapper.QIntellectualPropertyMapper;
import com.xinxi.service.IQIntellectualPropertyService;
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
public class QIntellectualPropertyServiceImpl extends ServiceImpl<QIntellectualPropertyMapper, QIntellectualProperty> implements IQIntellectualPropertyService {

    @Override
    public List<String> findIntellectualPropertyName(List<QQuestionIntellectualProperty> qips) {
        ArrayList<String> ipNames = new ArrayList<>();
        for (QQuestionIntellectualProperty qip:qips) {
            Integer intellectualPropertyId = qip.getIntellectualPropertyId();
            QueryWrapper<QIntellectualProperty> qw = new QueryWrapper<>();
            qw.eq("id",intellectualPropertyId);
            QIntellectualProperty one = super.getOne(qw);
            ipNames.add(one.getName());
        }
        return ipNames;
    }
}
