package com.sm.service;

import com.sm.pojo.Address;
import com.sm.pojo.Orders;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CartService {
    public List<Orders> CartAll(int uid);
    public List<Address> selAddress(int uid);
    public String Allnub(int uid);
    public String numPrice(int uid);
    public int mingXi(int uid,int oid);
    public Address tetAid(String addresss);
    public int XiaoFei(double num,int uid);
    public int Dingdan(int uid,int aid,String remarks);
}
