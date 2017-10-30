package com.human.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.model.User;
import com.human.service.UserService;

@Controller
@RequestMapping("/")
public class UserController {

    /**
     *
     */
    @Resource
    private UserService userService;
    //   private static final Logger logger = LoggerFactory.getLogger("UserController.class");
    private static final Logger logger = Logger.getLogger(UserController.class);

    @RequestMapping("/showuser")
    public String showUser(HttpServletRequest request, Model model) {
        logger.info("查询所有用户信息");
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "showUser";
    }

    @RequestMapping(value = "/findUserName",method = RequestMethod.POST)
    public String findUserName(User user, Model model) {
        /*if(StringUtils.isEmpty(user.getUserphone())){*/
            user = userService.getUserByNameOrPhone(user.getUsername(),user.getUserphone());
        /*}*/
        model.addAttribute("user",user);
        return "detail";
    }

    @RequestMapping("/userinfo/{id}")
    //查找其中一个用户，路径带参数
    public String getUserList(@PathVariable int id, Model model) {
        User user = userService.getUserById(id);
        model.addAttribute("user", user);
        return "detail";
    }


    @RequestMapping(value = "/add")
    public String toAdd(HttpServletRequest request) {
        return "adduser";

    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public User save(User user) {
        userService.save(user);
        return user;
    }

    @RequestMapping(value = "/updateuser", method = RequestMethod.POST)
    public String update(User user) {
//        log.info("更改用户");
//        Date date = new Date();
//        user.setModifyTime(date);
        userService.update(user);
        return "redirect:showuser";
    }


    @ResponseBody
    @RequestMapping(value = "/deleteuser/{id}", produces = "application/json; charset=utf-8")
    public String deleteUser(@PathVariable int id, Model model) {
        int did = userService.deleteUserById(id);
        String s;
        if (did == 1) {
            s = "成功删除";
        } else {
            s = "删除失败";
        }
        return s;
    }
}
