package com.sm.mapper;

import com.sm.pojo.U_user;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    public U_user loginUser(String uname,String pwd);
}
