package com.sm.controller;

import com.sm.pojo.Address;
import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/car")
public class CartController {
    @Autowired
    private CartService cartService;
    @RequestMapping("/Cart")
    public String Cart(HttpSession session){
        U_user user=(U_user)session.getAttribute("u_user");
        System.out.println(user);
        List<Address> addresses = cartService.selAddress(user.getUid());
        if(addresses==null||addresses.isEmpty()){
            session.setAttribute("addre", "你还没有添加地址");
            session.setAttribute("addresses", null);
        }else {
            System.out.println(addresses);
            session.setAttribute("addre", addresses.get(0).getAddresss());
            session.setAttribute("addresses", addresses);
        }
        List<Orders> order = cartService.CartAll(user.getUid());
        if(order.isEmpty()){
            System.out.println("-----------------");
            session.setAttribute("orderser", null);
            return "carts";
        }
        session.setAttribute("orderser", order);
        return "cart";
    }
    @RequestMapping(value = "/Addres", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String Addresses(String add, HttpSession session){
        System.out.println(add);
        if(add.trim().equals("请选择")){
            return "0";
        }
        session.setAttribute("addre", add);
        return "1";
    }
    @RequestMapping(value = "/zhifu", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String zhifu(String add,String liuyan, HttpSession session){
        System.out.println(liuyan+"----------"+add);
        U_user user=(U_user)session.getAttribute("u_user");
        String num=(String)session.getAttribute("num");
        String nums=(String)session.getAttribute("nums");
        int a=Integer.parseInt(num);
        double b=Double.parseDouble(nums);
        System.out.println("\n\n\n\na:"+a+"\nb:"+b+"\n\n\n\n");
        List<Orders> ord=(List<Orders>)session.getAttribute("orderser");
        int i=0;
        for (Orders or: ord
             ) {
            int n = cartService.mingXi(user.getUid(), or.getOid());
            i+=n;
        }
        System.out.println(i+"--------------"+ord.size());
        Address address=cartService.tetAid(add);
        System.out.println(address.getAid());
        System.out.println(b+"-----"+user.getUid());
        System.out.println(user.getBalance()-b);
        System.out.println(user.getUbalance()+b);
        int x=cartService.XiaoFei(user.getBalance()-b,user.getUbalance()+b,user.getUid());
        System.out.println(x);
        if(x==1){
            user.setBalance(user.getBalance()-b);
            user.setUbalance(user.getUbalance()+b);
            session.setAttribute("u_user",user);
        }
        if("".equals(liuyan)||liuyan==null){
            liuyan="无备注";
        }
        int j= cartService.Dingdan(user.getUid(), address.getAid(), liuyan);
        System.out.println(j);
        session.setAttribute("num","0");
        session.setAttribute("nums","0");
        if(i==ord.size()&&j==1&&x==1){

            System.out.println("\n\n成功了\n\n");
            return "1";
        }
        System.out.println("\n\n失败了\n\n");
        return "1";
    }
}
