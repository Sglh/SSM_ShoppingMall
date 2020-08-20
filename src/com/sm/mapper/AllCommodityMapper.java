package com.sm.mapper;

import com.sm.pojo.Commodity;
import com.sm.pojo.Orders;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface AllCommodityMapper {
    public List<Commodity> selCommodity();

    public int inCommodity(int uid, int coid, int number, String date);

    public Orders selOrder(int uid,int coid,int number);

    public int upOrder(int uid,int coid,int number);
}
