package com.sm.service.impl;

import com.sm.mapper.CartMapper;
import com.sm.pojo.Address;
import com.sm.pojo.Orders;
import com.sm.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;
//查询所以未支付订单
    @Override
    public List<Orders> CartAll(int uid) {
        return cartMapper.CartAll(uid);
    }
    //查询所以地址
    @Override
    public List<Address> selAddress(int uid) {
        return cartMapper.selAddress(uid);
    }

    @Override
    public String Allnub(int uid) {
        return cartMapper.Allnub(uid);
    }

    @Override
    public String numPrice(int uid) {
        return cartMapper.numPrice(uid);
    }

    @Override
    public int mingXi(int uid, int oid) {
        return cartMapper.mingXi(uid,oid);
    }

    @Override
    public Address tetAid(String addresss) {
        return cartMapper.tetAid(addresss);
    }

    @Override
    public int XiaoFei(double num, int uid) {
        return cartMapper.XiaoFei(num,uid);
    }

    @Override
    public int Dingdan(int uid, int aid, String remarks) {
        return cartMapper.Dingdan(uid,aid,remarks);
    }
}
