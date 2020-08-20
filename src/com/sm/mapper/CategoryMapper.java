package com.sm.mapper;

import com.sm.pojo.Category;
import com.sm.pojo.Commodity;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryMapper {
    @Select("select * from category where cid=#{param1}")
    public Category allCategory(int cid);
}
