package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.TableField;
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
     * 统一代码
     */
    private String unicode;

    //店铺拥有者
    @TableField(exist = false)
    private User user;

}
