package com.jeven.myblog.mapper;

import com.jeven.myblog.model.FeedBack;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: jeven
 * @Date: 2019/5/28 12:06
 * Describe: 反馈sql
 */
@Mapper
@Repository
public interface FeedBackMapper {

    @Insert("insert into feedback(feedbackContent,contactInfo,personId,feedbackDate) values(#{feedbackContent},#{contactInfo},#{personId},#{feedbackDate})")
    void insertFeedback(FeedBack feedBack);

    @Select("select * from feedback order by id desc")
    List<FeedBack> getAllFeedback();

}
