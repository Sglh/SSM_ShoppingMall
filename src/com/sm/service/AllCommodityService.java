package com.sm.service;

import com.sm.pojo.Commodity;
import com.sm.pojo.Orders;

import java.util.Date;
import java.util.List;

public interface AllCommodityService {
    public List<Commodity> selCommodity();

    public int inCommodity(int uid, int coid, int number);
    public Orders selOrder(int uid, int coid, int number);

    public int upOrder(int uid,int coid,int number);
}
