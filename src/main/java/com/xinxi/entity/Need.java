package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.Date;

/**
 * <p>
 * 需求表
 * </p>
 *
 * @author jobob
 * @since 2020-07-22
 */
@Data
@ToString
@EqualsAndHashCode(callSuper = true)
public class Need extends BaseEntity {

    private static final long serialVersionUID = 1L;

    //标题
    private String title;

    /**
     * 描述
     */
    private String description;

    /**
     * 分类id
     */
    private Long classify;

    /**
     * 分类
     */
    @TableField(exist = false)
    private NeedType needType;

    //项目地址
    private String adress;

    /**
     * 价格
     */
    private String price;

    //截止时间
    private String deadLine;

    //发布者id
    private Long userId;

    @TableField(exist = false)
    private User user;

    //乙方id
    private Long workerId;

    //乙方
    @TableField(exist = false)
    private User worker;

    //需求状态 y审核 n未审核
    private Character status;

    //完成状态 w未接单 i完成中 f已完成
    private Character progress;

    //完成状态字符串
    @TableField(exist = false)
    private String progressStr;

    //需求发布日期
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    //最后一次更新日期
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

    //开工日期
    private Date beginTime;

    //完成日期
    private Date finishTime;

}
