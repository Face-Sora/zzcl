package com.xinxi.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xinxi.entity.Need;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 需求表 服务类
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
public interface INeedService extends IService<Need> {

    Page<Need> findByClassifyToPage(int pageNum,int pageSize,Long classify);

    List<Need> findByWorkerId(Long workerId);

    List<Need> findByUserId(Long userId);

    Page<Need> listToPage(int pageNum,int pageSize);

    Page<Need> findNNeeds(int pageNum,int pageSize);

    Page<Need> findYNeeds(int pageNum, int pageSize);
}
