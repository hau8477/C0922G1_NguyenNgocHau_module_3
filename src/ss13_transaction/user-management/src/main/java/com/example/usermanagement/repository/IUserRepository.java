package com.example.usermanagement.repository;

import com.example.usermanagement.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
    public boolean insertUser(User user) throws SQLException;

    public User selectUserById(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

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
