package com.sm.service.impl;

import com.sm.mapper.UserMapper;
import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public U_user loginUser(String uname,String pwd) {
        U_user u_user = userMapper.loginUser(uname, pwd);
        return u_user;
    }

    @Override
    public List<Orders> allOrder(int uid) {
        return userMapper.allOrder(uid);
    }


    @Override
    public int BalanceAdd(int uid, double balance) {
        return userMapper.BalanceAdd(uid,balance);
    }
}
