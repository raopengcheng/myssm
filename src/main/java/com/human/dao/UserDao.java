package com.human.dao;

import com.human.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Repository
public interface UserDao {

    User selectUserById(@Param("userId") int userId);
    User getUserByNameOrPhone(@Param("username") String username,@Param("userphone")String userphone);

    User selectUserByPhoneOrEmail(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<User> selectAllUser();

    int deleteUserById(@Param("userId") int userId);

    //添加用户保存数据
    void save(User user);

    void update(User user);
    //根据用户名和密码查询用户
    User getUserByNameAndPwd(@Param("username") String username,@Param("password")String password);
}
