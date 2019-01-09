package com.ssm.service;

import com.ssm.entity.User;

import java.util.List;
import java.util.Map;

/**
 * 说明：用户UserService的接口定义
 * @author 梅真好
 * @company 京东商城（上海）
 * @create 2019-01-09 13:00
 */
public interface UserService {

    /**
     * 添加用户
     * @param user
     * @return
     */
    int addUser(User user);

    /**
     * 根据用户ID删除用户
     * @param id
     * @return
     */
    int deleteUser(int id);

    /**
     * 根据用户Id查找用户
     * @param id
     * @return
     */
    User getUserById(int id);

    /**
     * 查询所有用户
     * @return
     */
    List<User> getUserList(Map<String,Object> map);

    /**
     * 查询所有用户的个数
     * @return
     */
    int getCount();
    /**
     * 更新用户信息
     * @param user
     * @return
     */
    int updateUser(User user);
}
