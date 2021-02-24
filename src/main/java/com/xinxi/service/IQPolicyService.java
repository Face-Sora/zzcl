package com.xinxi.service;

import com.xinxi.entity.QPolicy;
import com.baomidou.mybatisplus.extension.service.IService;
import com.xinxi.entity.QQuestionPolicy;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
public interface IQPolicyService extends IService<QPolicy> {

    List<String> findNames(List<QQuestionPolicy> qps);
}
