package com.sm.filter;


import com.sm.pojo.U_user;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class OaFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest)servletRequest;
        String uri = req.getRequestURI();
        //System.out.println(uri);
        boolean b1 = uri.equals("/SSM_ShoppingMall_war_exploded/");
        boolean b2 = uri.equals("/SSM_ShoppingMall_war_exploded/user");
        boolean b3 = uri.startsWith("/SSM_ShoppingMall_war_exploded/js/");
        boolean b4 = uri.startsWith("/SSM_ShoppingMall_war_exploded/images/");
        boolean b5=uri.startsWith("/SSM_ShoppingMall_war_exploded/css/");
        boolean b6=uri.startsWith("/SSM_ShoppingMall_war_exploded/user/loginUser");
        boolean b7 = uri.equals("/SSM_ShoppingMall_war_exploded/slogin");
        boolean b8 = uri.equals("/SSM_ShoppingMall_war_exploded/regLogin");
        boolean b9 = uri.equals("/SSM_ShoppingMall_war_exploded/user/rLogin");
        boolean b10 = uri.equals("/SSM_ShoppingMall_war_exploded/user/smsLogin");
        if(b1 || b2 || b3 || b4 || b5 || b6 || b7||b8||b9||b10){
            filterChain.doFilter(servletRequest,servletResponse);
        }else{
            U_user u_user = (U_user) req.getSession().getAttribute("u_user");
            if(u_user != null){
                filterChain.doFilter(servletRequest,servletResponse);
            }else{
                req.setAttribute("msg","请先登录!");
                req.getRequestDispatcher("login").forward(servletRequest,servletResponse);
            }
        }
    }
}
