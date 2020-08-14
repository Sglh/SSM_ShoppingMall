package com.sm.service.impl;

import com.sm.mapper.ConsumMapper;
import com.sm.pojo.Orders;
import com.sm.service.ConsumServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ConsumServieImpl implements ConsumServie {

    @Autowired
    private ConsumMapper consumMapper;
    @Override
    public List<Orders> AllOrd(int uid) {
        return consumMapper.AllOrd(uid);
    }
}
