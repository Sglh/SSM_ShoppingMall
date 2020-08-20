package com.sm.mapper;

import com.sm.pojo.Address;
import com.sm.pojo.Picture;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AddressMapper {
    @Select("select * from address where aid=#{param1}")
    public Address selAddress(int aid);


    @Select("select * from address where uid=#{param1}")
    public List<Address> selAddressAll(int uid);
}
