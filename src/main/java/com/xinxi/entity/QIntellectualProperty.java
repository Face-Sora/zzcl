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
public class QIntellectualProperty extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 专利名
     */
    private String name;


}
