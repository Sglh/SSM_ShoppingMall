package com.sm.service.impl;

import com.sm.mapper.AllCommodityMapper;
import com.sm.pojo.Commodity;
import com.sm.pojo.Orders;
import com.sm.service.AllCommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class AllCommodityServiceImpl implements AllCommodityService {

    @Autowired
    private AllCommodityMapper allCommodityMapper;

    @Override
    public List<Commodity> selCommodity() {
        List<Commodity> commodities = allCommodityMapper.selCommodity();
        System.out.println("service时间："+commodities.get(0).getNewdate());
        return commodities;

    }


    /**
     * 加入购物车
     * @param uid
     * @param coid
     * @param number
     * @return
     */
    @Override
    public int inCommodity(int uid, int coid, int number) {
        //java.util.Date date1 = new java.util.Date();
        java.util.Date date = new Date(System.currentTimeMillis());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date1 = sdf.format(date);
        return allCommodityMapper.inCommodity(uid,coid,number,date1);
    }

    /**
     * 查看未购买并且同名的商品
     * @param uid
     * @param coid
     * @param number
     * @return
     */
    @Override
    public Orders selOrder(int uid, int coid, int number) {
        Orders orders = allCommodityMapper.selOrder(uid, coid, number);
        return orders;
    }

    /**
     * 修改商品数量
     */
    @Override
    public int upOrder(int uid, int coid, int number) {
        return allCommodityMapper.upOrder(uid,coid,number);
    }


}
