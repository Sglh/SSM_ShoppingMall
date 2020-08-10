package com.sm.controller;

/*显示页面控制器*/

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/{page}")
    public String showPage(@PathVariable String page) {
        return page;
    }
}