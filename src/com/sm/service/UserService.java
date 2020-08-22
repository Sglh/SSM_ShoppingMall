package com.sm.service;

import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    public U_user loginUser(String uname,String pwd);
    public List<Orders> allOrder(int uid);

    public int BalanceAdd(int uid,double balance);
    public U_user findByPhone(String phone);
    public int register(String uname,String pwd,String realname,String phone);
}
