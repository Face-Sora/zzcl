package com.xinxi.entity;

import java.time.LocalDate;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.FieldFill;
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
 * @since 2020-09-11
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class Apply extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 申请者
     */
    private Long applicantId;

    /**
     * 需求
     */
    private Integer needId;

    /**
     * 申请日期
     */
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    //申请人
    @TableField(exist = false)
    private User applicant;

    //需求
    @TableField(exist = false)
    private Need need;


}
