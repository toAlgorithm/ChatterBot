package cn.edu.hust.service;

import cn.edu.hust.bean.User;

import java.util.List;

/**
 * 测试项目结构用
 */

public interface UserService {

    List<User> queryAll();

    boolean login();
}