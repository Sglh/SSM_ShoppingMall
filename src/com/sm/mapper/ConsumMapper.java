package com.sm.mapper;

import com.sm.pojo.Consumption;
import com.sm.pojo.Orders;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ConsumMapper {

    public List<Orders> AllOrd(int uid);

    @Select("select * from consumption where oid=#{param1}")
    public Consumption AllCon(int oid);
}
