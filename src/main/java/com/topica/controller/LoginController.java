package com.topica.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.topica.model.UserEntity;
import com.topica.service.UserService;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.topica.model.EngtovieEntity;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @GetMapping("/login")
    public String showLogin(){
        return "index";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest req, HttpServletResponse reps){
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        int result = userService.checkUser(username, password);
        if(result == -1) {
            return "redirect:/login";
        } else if(result == 1) {
            HttpSession session = req.getSession();
            session.setAttribute("login", 1);
            return "redirect:/admin1";

        } else {
            HttpSession session = req.getSession();
            session.setAttribute("login", 2);
            return "redirect:/user";
        }

    }



}
