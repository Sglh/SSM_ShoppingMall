package com.sm.mapper;

import com.sm.pojo.Commodity;
import com.sm.pojo.Consumption;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface CommodityMapper {
    @Select("select * from commodity where coid=#{param1}")
    public Commodity allCommodity(int coid);
}
