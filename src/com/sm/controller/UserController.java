package com.sm.controller;

import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.CartService;
import com.sm.service.UserService;
import com.sm.util.SmsSender;
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
    @RequestMapping("/loginUser")
    public String loginUser(String uname, String pwd, HttpSession session, Model m) {
        System.out.println("进入了loginUser");
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


    /**
     * 发送短信
     */
    String smsnum;
    U_user u_user;
    @RequestMapping("/smsSend")
    @ResponseBody
    public String smsSend(String phone) {
        System.out.println("进入了smsSend");
        //登录逻辑1,根据phone查询数据中是否有
        u_user = userService.findByPhone(phone);
        if(u_user == null){
            System.out.println("u_user没有查到数据");
            return "0";
        }else {
            //有,发送短信,获取的六位数码
            System.out.println("u_use查到数据");
            SmsSender ss = new SmsSender();
            smsnum = ss.sendCode(phone);
            System.out.println("短信码:" + smsnum);//ajax发送的请求不能用请求转发或重定向响应
            return "1"; //发送成功返回1
        }
    }

    /**
     * 短信登录判断
     */
    @RequestMapping("/smsLogin")
    public String smsLogin(HttpSession session,String code,Model m) {
        System.out.println("进入了smsLogin");
        //数据库中有,再校验code
        if(code.equals(smsnum)){
            session.setAttribute("u_user",u_user);
            //跳转页面到main,重定向
            return "redirect:/index";
        }else{
            //短信校验失败
            m.addAttribute("msg","验证码不正确!");
            return "slogin";
        }
    }


    /**
     * 注册
     * @return
     */
    @RequestMapping("/rLogin")
    public String rLogin(String uname,String pwd,String u_name,String phone,Model m) {
        int i = userService.register(uname, pwd, u_name, phone);
        if(i != 0) {
            System.out.println("注册成功");
            return "login";
        }else {
            System.out.println("注册失败");
            m.addAttribute("msgs","注册失败");
            return "regLogin";
        }

    }
}
