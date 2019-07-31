package com.jeven.myblog.model;

import lombok.Data;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 返回统一的响应格式
 */
@Data
public class Result<T> {

    /**
     * 错误码
     */
    private Integer code;

    /**
     * 提示信息
     */
    private String msg;

    /**
     * 具体内容
     */
    private  T data;

}
