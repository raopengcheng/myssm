package com.human.service.impl;

import com.human.dao.UserDao;
import com.human.model.User;
import com.human.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    public List<User> getAllUser() {

        return userDao.selectAllUser();
    }

    public User getUserById(int userId) {

        return userDao.selectUserById(userId);
    }

    public User getUserByNameOrPhone(String username,String userphone) {
        return userDao.getUserByNameOrPhone(username,userphone);
    }

    public int deleteUserById(int userId){
        return  userDao.deleteUserById(userId);
    }

    public void save(User user) {
        userDao.save(user);
    }

    public void update(User user) {

        userDao.update(user);
    }

    public User getUserByNameAndPwd(String username,String password){//根据用户名和密码查询用户，登入验证
        return userDao.getUserByNameAndPwd(username,password);
    }
}









