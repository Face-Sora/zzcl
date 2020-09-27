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
public class QServiceDefect extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 服务不足
     */
    private String serviceDefect;


}
