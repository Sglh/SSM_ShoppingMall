package com.sm.mapper;

import com.sm.pojo.Address;
import com.sm.pojo.Picture;
import org.apache.ibatis.annotations.Select;

public interface AddressMapper {
    @Select("select * from address where aid=#{param1}")
    public Address selAddress(int aid);
}
