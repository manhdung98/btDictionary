package com.topica.controller;

import com.topica.model.EngtovieEntity;
import com.topica.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @GetMapping("/user")
    public String getViewUser(Model model) {
       model.addAttribute("word", new EngtovieEntity());
        return "user/user";
    }

    @GetMapping("/word-search")
    public String search(Model model, @RequestParam("key") String key){
        EngtovieEntity w = userService.searchEng(key);
        System.out.println(key);
        model.addAttribute("word", w);
        return "user/user";
    }

}
