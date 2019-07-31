package com.jeven.myblog.model;

import lombok.Data;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 文章归档
 */
@Data
public class Archive {

    private int id;

    /**
     * 归档日期
     */
    private String archiveName;


}
