package com.xinxi.entity;

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
@EqualsAndHashCode(callSuper = true)
public class QCompanyDefect extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 企业痛点
     */
    private String defect;


}
