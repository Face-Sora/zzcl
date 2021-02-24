package com.xinxi.entity;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Setter;

import java.util.Date;
import java.util.List;

/**
 * <p>
 * 
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
@Data
@Table(name="q_question")
public class QQuestion{

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)//mybatis-plus主键注解
    @IsAutoIncrement   //自增
    @IsKey             //actable主键注解
    @Column
    private Integer id;

    /**
     * 公司
     */
    @Column
    @ExcelProperty("公司")
    private String company;

    /**
     * 联系人
     */
    @Column
    @ExcelProperty("联系人")
    private String boss;

    //联系方式
    @ExcelProperty("电话")
    private String phone;

    /**
     * 地址
     */
    @Column
    @ExcelProperty("地址")
    private String address;

    /**
     * 是否科技企业
     */
    @Column
    @ExcelProperty("科技企业")
    private Boolean science;

    /**
     * 营业额 1:0 2:100w下 3:100-500W 4:500-1000w 5:1000-5000w 6:5000w上
     */
    @Column
    @ExcelIgnore
    private Integer volume;

    @TableField(exist = false)
    @ExcelProperty("营业额")
    private String volumeStr;

    /**
     * 人员规模 0:1-10 1:10-30 2:30-50 3:50-100 4:100>>
     */
    @Column
    @ExcelIgnore
    private Integer scale;

    @TableField(exist = false)
    @ExcelProperty("人员")
    private String scaleStr;

    /**
     * 0无需 1股权 2债权
     */
    @Column
    @ExcelIgnore
    private Integer financing;

    @TableField(exist = false)
    @ExcelProperty("融资需求")
    private String financingStr;

    /**
     * 融资需求金额 0:50-100 1:100-500 2:500-1000 3:1000>>
     */
    @Column
    @ExcelIgnore
    private Integer financingMoney;

    @TableField(exist = false)
    @ExcelProperty("融资需求金额")
    private String financingMoneyStr;

    /**
     * 曾是否贷款
     */
    @Column
    @ExcelProperty("是否贷款")
    private Boolean locans;

    /**
     * 贷款银行
     */
    @Column
    @ExcelProperty("贷款银行")
    private String locansBank;

    /**
     * 贷款金额
     */
    @Column
    @ExcelProperty("贷款")
    private Double locansNum;

    /**
     * 是否愿意付费培训
     */
    @Column
    @ExcelProperty("付费培训")
    private Boolean trainPay;

    /**
     * 可接受培训费 0:100-300元 1:300-500元 2:500-1000元 3:1000元以上
     */
    @Column
    @ExcelIgnore
    private Integer trainPrice;

    @TableField(exist = false)
    @ExcelProperty("培训费")
    private String trainPriceStr;

    /**
     * 不足建议
     */
    @Column
    @ExcelProperty("不足建议")
    private String defectSuggest;

    /**
     * 上下游结合需求
     */
    @Column
    @ExcelProperty("上下游结合需求")
    private String combieNeed;

    /**
     * 服务建议
     */
    @Column
    @ExcelProperty("服务建议")
    private String serviceSuggest;

    //自主知识产权
    @TableField(exist = false)
    @ExcelIgnore
    private List<String> properties;

    //了解的科技创新政策
    @TableField(exist = false)
    @ExcelIgnore
    private List<String> policies;

    //填表时间
    @Column
    @TableField(fill = FieldFill.INSERT)
    @ExcelProperty("填表时间")
    private Date createTime;

    public void setScale(Integer scale) {
        this.scale = scale;
        if (scale == 0)
            this.scaleStr = "1-10人";
        else if (scale == 1)
            this.scaleStr = "10-30人";
        else if (scale == 2)
            this.scaleStr = "30-50人";
        else if (scale == 3)
            this.scaleStr = "50-100人";
        else if (scale == 4)
            this.scaleStr = "100人以上";
    }

    public void setFinancing(Integer financing) {
        this.financing = financing;
        if (financing == 0)
            this.financingStr = "无需";
        else if (financing == 1)
            this.financingStr = "股权融资";
        else if (financing == 2)
            this.financingStr = "债权融资";

    }

    public void setVolume(Integer volume) {
        this.volume = volume;
        if (volume == 1)
            this.volumeStr = "研发阶段，没有销售";
        else if (volume == 2)
            this.volumeStr = "100万以下";
        else if (volume == 3)
            this.volumeStr = "100-500万";
        else if (volume == 4)
            this.volumeStr = "500-1000万";
        else if (volume == 5)
            this.volumeStr = "1000-5000万";
        else if (volume == 6)
            this.volumeStr = "5000万以上";
    }

    public void setFinancingMoney(Integer financingMoney) {
        this.financingMoney = financingMoney;
        if (financingMoney == 0)
            this.financingMoneyStr = "50-100万";
        else if (financingMoney == 1)
            this.financingMoneyStr = "100-500万";
        else if (financingMoney == 2)
            this.financingMoneyStr = "500-1000万";
        else if (financingMoney == 3)
            this.financingMoneyStr = "1000万及以上";

    }

    public void setTrainPrice(Integer trainPrice) {
        this.trainPrice = trainPrice;
        if (trainPrice == 0)
            this.trainPriceStr = "100元-300元/一次课程";
        else if (trainPrice == 1)
            this.trainPriceStr = "300元-500元/一次课程";
        else if (trainPrice == 2)
            this.trainPriceStr = "500元-1000元/一次课程";
        else if (trainPrice == 3)
            this.trainPriceStr = "1000元以上/一次课程";
    }
}
