package com.topica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @RequestMapping("/login")
    public String redirect() {
        return "index";
    }

    @RequestMapping("/admin/admin1")
    public String admin1(){
        return "admin1";
    }

    @RequestMapping("/helloagain")
    public String display() {
        return "final";
    }
}
