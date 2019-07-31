package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 留言中点赞
 */
@Data
@NoArgsConstructor
public class LeaveMessageLikesRecord {

    private long id;

    /**
     * 文章页
     */
    private String pageName;

    /**
     * 评论的id
     */
    private int pId;

    /**
     * 点赞人
     */
    private int likerId;

    /**
     * 点赞时间
     */
    private String likeDate;

    public LeaveMessageLikesRecord(String pageName, int pId, int likerId, String likeDate) {
        this.pageName = pageName;
        this.pId = pId;
        this.likerId = likerId;
        this.likeDate = likeDate;
    }
}
