package com.xinxi.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
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
@Table(name="q_question_intellectual_property")
public class QQuestionIntellectualProperty {

    private static final long serialVersionUID = 1L;

    @Column
    private Integer questionId;

    @Column
    private Integer intellectualPropertyId;


}
