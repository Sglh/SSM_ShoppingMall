package com.sm.service;

import com.sm.pojo.Signin;
import org.springframework.stereotype.Service;

import java.sql.Date;

@Service
public interface SigninServie {
    public Signin signAll(int uid, Date sdata);

    public int signAdd(int uid, Date sdata);
}
