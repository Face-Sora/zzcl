package com.xinxi.entity;

import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 店铺表
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Store extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 店铺名称
     */
    private String name;

    /**
     * 店铺地址
     */
    private String address;

    /**
     * 接单次数
     */
    private Integer time;

    //店铺拥有者
    private User user;

}
