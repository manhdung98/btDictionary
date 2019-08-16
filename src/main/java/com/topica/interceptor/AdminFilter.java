package com.topica.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class AdminFilter implements HandlerInterceptor {


    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {

        HttpSession session = request.getSession();
        Integer role = (Integer) session.getAttribute("login");

        boolean isAdmin = role == 1;
        if (!isAdmin) {
            response.sendRedirect(request.getContextPath() + "/user");
            return false;
        }

        return true;
    }

}
