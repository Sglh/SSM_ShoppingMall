package com.sm.service;

import com.sm.pojo.Consumption;
import com.sm.pojo.Orders;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ConsumServie {
    public List<Orders> AllOrd(int uid);

}
