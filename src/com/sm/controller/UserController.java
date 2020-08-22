package com.sm.controller;

import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.CartService;
import com.sm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private CartService cartService;
    @RequestMapping(value = "/loginUser/{uname},{pwd}")
    public String loginUser(@PathVariable String uname, @PathVariable String pwd, HttpSession session, Model m) {
        //System.out.println(uname+"---------"+pwd);
        U_user u_user = userService.loginUser(uname,pwd);
        String s = cartService.Allnub(u_user.getUid());
        String d=cartService.numPrice(u_user.getUid());
        if(s==null||"".equals(s)){
            s="0";
        }
        if(d==null||"".equals(d)){
            d="0";
        }
        session.setAttribute("nums",d);
        session.setAttribute("num",s);
        //System.out.println(u_user);
        if(u_user != null) {
            //把登录的用户放入session
            session.setAttribute("u_user",u_user);
            //System.out.println(u_user);
            //System.out.println(session.getAttribute("u_user"));
            //System.out.println("-------------");
            //跳转页面,重定向
            return "redirect:/index";
        }else {
            return "login";
        }
    }

    @RequestMapping("/allOrder")
    public String allOrder(HttpSession session) {
        System.out.println("进入了allOrder");
        U_user u_user = (U_user)session.getAttribute("u_user");
        int uid = u_user.getUid();
        List<Orders> orders = userService.allOrder(uid);
        System.out.println("orders的值"+orders.toString());
        session.setAttribute("orders",orders);
        return "order";
    }

    @RequestMapping("/BalanceAdd")
    @ResponseBody
    public String BalanceAdd(String balance,HttpSession session){
        U_user u_user = (U_user)session.getAttribute("u_user");
        System.out.println(balance);
        String str=balance.substring(0,balance.length()-1);
        //System.out.println(str);
        double ble=Double.parseDouble(str);
        System.out.println(ble);
        int n=userService.BalanceAdd(u_user.getUid(),ble);
        if(n==1){
            double a=u_user.getBalance()+ble;
            u_user.setBalance(a);
            session.setAttribute("u_user",u_user);
            return "1";
        }else {
            return "0";
        }

    }

}
