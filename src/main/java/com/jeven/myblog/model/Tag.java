package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: jeven
 * @Date: 2019/6/2 15:36
 * Describe: 标签
 */
@Data
@NoArgsConstructor
public class Tag {

    private int id;

    /**
     * 标签名
     */
    private String tagName;

    /**
     * 标签大小
     */
    private int tagSize;

    public Tag(String tagName, int tagSize) {
        this.tagName = tagName;
        this.tagSize = tagSize;
    }
}
