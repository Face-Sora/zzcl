package com.xinxi.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.QQuestion;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
public interface IQQuestionService extends IService<QQuestion> {

    Page<QQuestion> findByPage(Boolean science,Integer scale,Integer financing,
                               Integer locans,Boolean trainPay,int pageNum,int pageSize);
}
