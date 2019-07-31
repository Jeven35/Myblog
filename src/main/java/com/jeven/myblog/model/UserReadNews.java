package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 用户评论留言未读数
 */
@Data
@NoArgsConstructor
public class UserReadNews implements Serializable{

    /**
     * 留言+评论未读数
     */
    private int allNewsNum;

    /**
     * 评论未读数
     */
    private int commentNum;

    /**
     * 留言未读数
     */
    private int leaveMessageNum;

    public UserReadNews(int allNewsNum, int commentNum, int leaveMessageNum) {
        this.allNewsNum = allNewsNum;
        this.commentNum = commentNum;
        this.leaveMessageNum = leaveMessageNum;
    }
}
