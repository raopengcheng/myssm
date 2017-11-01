package com.human.service;

import com.human.model.User;

import java.util.List;

public interface UserService {

    List<User> getAllUser();

    public User getUserById(int userId);

    public User getUserByNameOrPhone(String username,String userphone);

    public int deleteUserById(int userId);

    void save(User user);

    void update(User user);
    public User getUserByNameAndPwd(String username,String password);//根据用户名和密码查询用户，登入验证
}
