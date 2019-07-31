package com.jeven.myblog.redis;

/**
 * @author: jeven
 * @Date: 2019/5/29 15:31
 * Describe:
 */
public interface RedisService {

    /**
     * 判断key是否存在
     */
    Boolean hasKey(String key);

}
