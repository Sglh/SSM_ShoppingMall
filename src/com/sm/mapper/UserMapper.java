package com.sm.mapper;

import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    public U_user loginUser(String uname,String pwd);
    public List<Orders> allOrder(int uid);
}
