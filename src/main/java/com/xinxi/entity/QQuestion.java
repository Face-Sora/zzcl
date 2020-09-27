package com.xinxi.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.xinxi.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author jobob
 * @since 2020-09-22
 */
@Data
public class QQuestion{

    private static final long serialVersionUID = 1L;

    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 公司
     */
    private String company;

    /**
     * 联系人
     */
    private String boss;

    /**
     * 地址
     */
    private String address;

    /**
     * 是否科技企业
     */
    private Boolean science;

    /**
     * 营业额
     */
    private String volume;

    /**
     * 人员规模 0:1-10 1:10-30 2:30-50 3:50-100 4:100>>
     */
    private Integer scale;

    /**
     * 0无需 1股权 2债权
     */
    private Integer financing;

    /**
     * 融资需求金额 0:50-100 1:100-500 2:500-1000 3:1000>>
     */
    private Integer financingMoney;

    /**
     * 曾是否贷款
     */
    private Boolean locans;

    /**
     * 贷款银行
     */
    private String locansBank;

    /**
     * 贷款金额
     */
    private Double locansNum;

    /**
     * 是否愿意付费培训
     */
    private Boolean trainPay;

    /**
     * 可接受培训费
     */
    private String trainPrice;

    /**
     * 不足建议
     */
    private String defectSuggest;

    /**
     * 上下游结合需求
     */
    private String combieNeed;

    /**
     * 服务建议
     */
    private String serviceSuggest;


}
