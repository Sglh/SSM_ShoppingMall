package com.sm.mapper;

import com.sm.pojo.Consumption;
import com.sm.pojo.Picture;
import org.apache.ibatis.annotations.Select;

public interface ImgMapper {
    @Select("select * from picture where coid=#{param1}")
    public Picture imgMapper(int coid);
}
