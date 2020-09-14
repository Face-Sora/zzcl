package com.xinxi.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Apply;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jobob
 * @since 2020-09-11
 */
public interface IApplyService extends IService<Apply> {

    Apply findByNeedIdAndApplicantId(int needId, Long id);

    Page page(int pageNum, int pageSize);
}
