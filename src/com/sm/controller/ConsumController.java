package com.sm.controller;


import com.sm.pojo.Orders;
import com.sm.pojo.U_user;
import com.sm.service.ConsumServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/con")
public class ConsumController {
    @Autowired
    private ConsumServie consumServie;


    @RequestMapping("/memberPo")
    public String memberPo(HttpSession session){
       // System.out.println("--------------------------");
        //System.out.println(session.getAttribute("u_user"));
        U_user user=(U_user)session.getAttribute("u_user");
        int uid=user.getUid();
        //System.out.println(uid);
        List<Orders> com=consumServie.AllOrd(uid);
        session.setAttribute("com",com);
        return "memberPoints";
    }
}
