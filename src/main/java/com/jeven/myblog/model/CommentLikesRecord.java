package com.jeven.myblog.model;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: jeven
 * @Date: 2019/5/28 11:52
 * Describe: 文章评论点赞记录
 */
@Data
@NoArgsConstructor
public class CommentLikesRecord {

    private long id;

    /**
     * 文章id
     */
    private long articleId;

    /**
     * 评论的id
     */
    private long pId;

    /**
     * 点赞人
     */
    private int likerId;

    /**
     * 点赞时间
     */
    private String likeDate;

    public CommentLikesRecord(long articleId, int pId, int likerId, String likeDate) {
        this.articleId = articleId;
        this.pId = pId;
        this.likerId = likerId;
        this.likeDate = likeDate;
    }
}
