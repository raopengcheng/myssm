package com.human.controller.login;

import com.human.model.User;
import com.human.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/")
public class UserLogin {
    @Resource
    private UserService userService;
    @RequestMapping("/loginMain")
    public String loginMain(HttpServletRequest req){
        return "login";
    }

    @RequestMapping("/register")
    public String register(HttpServletRequest req){
        return "register";
    }

    @RequestMapping(value = "/registerSave",method = RequestMethod.POST)
    public String registerSave(Model model, User user){
        userService.save(user);
        return "index";
    }

    @RequestMapping(value="/login",method=RequestMethod.POST)
    public String login(User user,Model model){
        user=userService.getUserByNameAndPwd(user.getUsername(),user.getPassword());
        model.addAttribute("username",user.getUsername());
        return "index";
    }
}
