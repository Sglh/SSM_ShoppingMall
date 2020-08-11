package com.sm.controller;

import com.sm.pojo.Signin;
import com.sm.pojo.U_user;
import com.sm.service.SigninServie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Date;

@Controller
@RequestMapping("/sig")
public class SigninController {
    @Autowired
    private SigninServie signinServie;

    @RequestMapping("/signIn")
    @ResponseBody
    public String SigninAll(HttpSession session){
        U_user user=(U_user)session.getAttribute("u_user");
        int uid=user.getUid();
        Date dtdate =new Date(System.currentTimeMillis());
        Signin signin = signinServie.signAll(uid, dtdate);
        //System.out.println(signin);
        if(signin==null){
            int a=signinServie.signAdd(uid,dtdate);
            if(a==1){
                return "1";
            }else {
                return "0";
            }
        }else {
            return "-1";
        }
    }
}
