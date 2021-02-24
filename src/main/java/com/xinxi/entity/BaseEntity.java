package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import lombok.Data;

import java.io.Serializable;

@Data
public class BaseEntity implements Serializable {

    @TableId(type = IdType.AUTO)
    @IsAutoIncrement   //自增
    @IsKey             //actable主键注解
    @Column
    private Long id;
}
