package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author jobob
 * @since 2020-11-24
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Product extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String title;

    private String owner;

    private String phone;

    private String photo;

    private String company;

    private String address;

    private Integer typeId;

    private String detail;

    @TableField(exist = false)
    private String type;


}
