package com.example.usermanagement.service;

import com.example.usermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    public boolean insertUser(User user);

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id);

    public boolean updateUser(User user);
}
