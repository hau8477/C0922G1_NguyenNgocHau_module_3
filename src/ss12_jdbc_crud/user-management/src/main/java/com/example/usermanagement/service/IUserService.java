package com.example.usermanagement.service;

import com.example.usermanagement.model.User;

import java.util.List;

public interface IUserService {
    public boolean insertUser(User user);

    public User selectUserById(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id);

    public boolean updateUser(User user);

    List<User> selectUserByCountry(String country);

    List<User> sortByNameUser();

}
