package com.xinxi.service;

import com.xinxi.entity.QIntellectualProperty;
import com.baomidou.mybatisplus.extension.service.IService;
import com.xinxi.entity.QQuestionIntellectualProperty;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
public interface IQIntellectualPropertyService extends IService<QIntellectualProperty> {

    List<String> findIntellectualPropertyName(List<QQuestionIntellectualProperty> qips);

}
