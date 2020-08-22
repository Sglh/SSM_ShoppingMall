package com.sm.mapper;

import com.sm.pojo.Feedback;
import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

@Repository
public interface FeedbackMapper {
    @Insert("insert into feedback values(null,#{uid},#{aid},#{fremarks})")
    public int FeedAdd(Feedback feedback);

    @Insert("insert into address values(null,#{param1},#{param2})")
    public int addAddress(int uid,String addres);
}
