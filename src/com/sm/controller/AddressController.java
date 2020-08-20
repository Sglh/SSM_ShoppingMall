package com.sm.controller;


import com.sm.pojo.Address;
import com.sm.pojo.Feedback;
import com.sm.pojo.U_user;
import com.sm.service.ConsumServie;
import com.sm.service.FeedbackServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/Add")
public class AddressController {
    @Autowired
    private FeedbackServie feedbackServie;

    @RequestMapping("/comm")
    public String AddressAll(HttpSession session){
        System.out.println("12345");
        U_user user=(U_user)session.getAttribute("u_user");
        List<Address> addresses = feedbackServie.selAddressAll(user.getUid());
        System.out.println(addresses);
        if(addresses==null){
            session.setAttribute("addresses",null);
        }else {
            session.setAttribute("addresses",addresses);
        }
        return "comments";
    }
    @RequestMapping(value = "/comAdd", produces = "text/html;charset=utf-8")
    @ResponseBody
    public String AddressAdd(Feedback feedback,HttpSession session){
        U_user user=(U_user)session.getAttribute("u_user");
        feedback.setUid(user.getUid());
        System.out.println(feedback);
        if(feedback.getAid()==0){
            return "地址一栏必须填写。";
        }
        if(feedback.getFremarks()==null||"".equals(feedback.getFremarks())){
            return "留言一栏必须填写。";
        }
        int n=feedbackServie.FeedAdd(feedback);
        System.out.println(n);
        if(n==1){
            return "反馈成功！";
        }else {
            return "反馈失败！";
        }

    }

}
