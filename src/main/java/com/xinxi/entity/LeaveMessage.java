package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author jobob
 * @since 2020-09-07
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class LeaveMessage extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String username;

    private String email;

    private String phone;

    private String company;

    private String message;

    @TableField(fill = FieldFill.INSERT)
    private Date createTime;
}
