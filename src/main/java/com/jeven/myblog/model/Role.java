package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 权限
 */
@Data
@NoArgsConstructor
public class Role {

    private int id;

    private String name;

    public Role(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
