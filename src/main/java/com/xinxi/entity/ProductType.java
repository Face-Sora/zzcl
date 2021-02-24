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
 * @since 2020-11-24
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ProductType extends BaseEntity {

    private static final long serialVersionUID = 1L;

    private String type;


}
