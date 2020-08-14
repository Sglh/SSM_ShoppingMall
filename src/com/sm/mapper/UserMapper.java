package com.sm.mapper;

import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    public U_user loginUser(String uname,String pwd);
    public List<Orders> allOrder(int uid);


    @Update("update u_user set balance=balance+#{param2} where uid =#{param1}")
    public int BalanceAdd(int uid,double balance);
}
