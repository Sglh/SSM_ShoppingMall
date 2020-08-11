package com.sm.controller;

import com.sm.pojo.U_user;
import com.sm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/loginUser/{uname},{pwd}")
    public String loginUser(@PathVariable String uname, @PathVariable String pwd, HttpSession session, Model m) {
        //System.out.println(uname+"---------"+pwd);
        U_user u_user = userService.loginUser(uname,pwd);
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

}
