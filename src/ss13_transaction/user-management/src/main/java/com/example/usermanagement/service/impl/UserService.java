package com.example.usermanagement.service.impl;

import com.example.usermanagement.model.User;
import com.example.usermanagement.repository.IUserRepository;
import com.example.usermanagement.repository.impl.UserRepository;
import com.example.usermanagement.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private final IUserRepository userRepository = new UserRepository();

    @Override
    public boolean insertUser(User user) {
        try {
            this.userRepository.insertUser(user);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User selectUserById(int id) {
        return this.userRepository.selectUserById(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return this.userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) {
        try {
            this.userRepository.deleteUser(id);
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateUser(User user) {
        try {
            this.userRepository.updateUser(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> selectUserByCountry(String country) {
        return this.userRepository.selectUserByCountry(country);
    }

    @Override
    public List<User> sortByNameUser() {
        return this.userRepository.sortByNameUser();
    }

    @Override
    public User getUserById(int id) {
        return this.userRepository.getUserById(id);
    }

    @Override
    public boolean insertUserStore(User user) {
        return this.userRepository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        this.userRepository.addUserTransaction(user,permision);
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        this.userRepository.insertUpdateWithoutTransaction();
    }

    @Override
    public void insertUpdateUseTransaction() {
        this.userRepository.insertUpdateUseTransaction();
    }

    @Override
    public boolean updateUserStore(User user) {
        return this.userRepository.updateUserStore(user);
    }

    @Override
    public List<User> selectAllUserStore() {
        return this.userRepository.selectAllUserStore();
    }

    @Override
    public boolean deleteUserStore(int id) {
        return this.userRepository.deleteUserStore(id);
    }


}
