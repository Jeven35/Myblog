package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe:
 */
@Data
@NoArgsConstructor
public class FriendLink {

    private int id;

    /**
     * 博主
     */
    private String blogger;

    /**
     * 博主url
     */
    private String url;

    public FriendLink(String blogger, String url){
        this.blogger = blogger;
        this.url = url;
    }

}
