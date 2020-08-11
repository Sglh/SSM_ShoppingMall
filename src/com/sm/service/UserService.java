package com.sm.service;

import com.sm.pojo.U_user;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    public U_user loginUser(String uname,String pwd);
}
