package com.xinxi.entity;

import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 需求商铺对照表
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class NeedStore extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 需求id
     */
    private Long needId;

    /**
     * 商铺id
     */
    private Long storeId;

    /**
     * 状态
     */
    private String state;


}
