package com.sm.service.impl;

import com.sm.mapper.SigninMapper;
import com.sm.pojo.Signin;
import com.sm.service.SigninServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
@Service
public class SigninServieImpl implements SigninServie {
    @Autowired
    private SigninMapper signinMapper;
    @Override
    public Signin signAll(int uid, Date sdata) {
        return signinMapper.signAll(uid,sdata);
    }

    @Override
    public int signAdd(int uid, Date sdata) {
        return signinMapper.signAdd(uid,sdata);
    }
}
