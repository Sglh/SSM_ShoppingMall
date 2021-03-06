package com.sm.controller;

import com.sm.pojo.Commodity;
import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.AllCommodityService;
import com.sm.service.CartService;
import com.sm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/*
* 超市
* */

@Controller
@RequestMapping("/shop")
public class ShopController  {
    @Autowired
    private AllCommodityService allCommodityService;

    @RequestMapping("/allCommodity")
    public String allOrder(HttpSession session) {
        System.out.println("进入了allCommodity");
        List<Commodity> commodities = allCommodityService.selCommodity();
        System.out.println("commodities的值"+commodities.toString());
        session.setAttribute("commodities",commodities);
        return "shop";
    }
    @Autowired
    private CartService cartService;

    @RequestMapping("/inNumber")
    @ResponseBody
    public int inNumber(String uid,String coid,String number,HttpSession session) {
        System.out.println("加入购物车");

        System.out.println("uid="+uid+"---coid="+coid+"---number="+number);
        //查看购物车是否已经存在此商品
        Orders orders = allCommodityService.selOrder(Integer.parseInt(uid), Integer.parseInt(coid), Integer.parseInt(number));
        if(orders != null) {
            //存在同名未购买商品
            System.out.println("存在同名未购买商品"+orders);
            int i = allCommodityService.upOrder(Integer.parseInt(uid), Integer.parseInt(coid), Integer.parseInt(number));
        }else {
            //
            int i = allCommodityService.inCommodity(Integer.parseInt(uid),Integer.parseInt(coid),Integer.parseInt(number));
        }
        String s = cartService.Allnub(Integer.parseInt(uid));
        if(s==null||"".equals(s)){
            s="0";
        }

        session.setAttribute("num",s);
        String d=cartService.numPrice(Integer.parseInt(uid));
        if(d==null||"".equals(d)){
            d="0";
        }
        session.setAttribute("nums",d);
        return 1;
    }

    @RequestMapping("/selOrder")
    public int selOrder(String uid,String coid,String number) {
        System.out.println("uid="+uid+"---coid="+coid+"---number="+number);
        Orders orders = allCommodityService.selOrder(Integer.parseInt(uid), Integer.parseInt(coid), Integer.parseInt(number));

        System.out.println(orders);
        int i = 0;
        if(orders != null) {
            i = 1;
        }
        return i;
    }

}
