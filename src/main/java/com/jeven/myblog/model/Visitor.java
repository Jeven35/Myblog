package com.jeven.myblog.model;

import lombok.Data;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 访客
 */
@Data
public class Visitor {

    private int id;

    /**
     * 访客人数
     */
    private long visitorNum;

    /**
     * 当前页的name or 文章名
     */
    private String pageName;
}
