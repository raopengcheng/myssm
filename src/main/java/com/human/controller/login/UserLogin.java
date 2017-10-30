package com.human.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class UserLogin {
    @RequestMapping("/loginMain")
    public String loginMain(HttpServletRequest req){
        return "login";
    }
}
