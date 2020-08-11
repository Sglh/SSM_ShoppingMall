package com.sm.mapper;

import com.sm.pojo.Signin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.sql.Date;
@Repository
public interface SigninMapper {
    @Select("select * from signin where uid=#{param1} and sdata=#{param2}")
    public Signin signAll(int uid, Date sdata);
    @Insert("insert into signin values(null,#{param1},#{param2})")
    public int signAdd(int uid, Date sdata);
}
