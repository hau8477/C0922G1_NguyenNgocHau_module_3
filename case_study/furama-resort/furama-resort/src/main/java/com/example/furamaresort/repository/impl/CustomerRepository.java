package com.example.furamaresort.repository.impl;

import com.example.furamaresort.model.person.inheritance.Customer;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.repository.BaseRepository;
import com.example.furamaresort.repository.IRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements IRepository<Customer> {
    @Override
    public boolean insertObject(Customer o) {
        return false;
    }

    @Override
    public List<Customer> selectAllObject() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT  c.id, ct.name as" +
                    " customer_type, c.name,  c.day_of_birth, c.gender, c.id_card, c.phone_number, c.email," +
                    " c.address FROM customer_type ct JOIN customer c ON c.customer_type_id = ct.id;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String customerType = resultSet.getString(2);
                String name = resultSet.getString(3);
                String dayOfBirth = resultSet.getString(4);
                boolean gender = resultSet.getBoolean(5);
                String idCard = resultSet.getString(6);
                int phoneNumber = resultSet.getInt(7);
                String email = resultSet.getString(8);
                String address = resultSet.getString(9);
                Customer customer = new Customer(name, dayOfBirth, gender, idCard, phoneNumber, email,id,customerType,address);
                customers.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public boolean updateObject(Customer o) {
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        return false;
    }

    @Override
    public Customer selectById(int id) {
        return null;
    }
}
