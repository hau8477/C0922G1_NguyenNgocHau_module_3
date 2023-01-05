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

    User getUserById(int id);

    boolean insertUserStore(User user);

    void addUserTransaction(User user, int[] permision);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();

    boolean updateUserStore(User user);

    List<User> selectAllUserStore();

    boolean deleteUserStore(int id);
}
