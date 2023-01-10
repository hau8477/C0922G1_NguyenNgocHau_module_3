package com.example.furamaresort.repository.impl;

import com.example.furamaresort.model.CustomerType;
import com.example.furamaresort.model.Division;
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
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO customer(name, day_of_birth," +
                    " gender, id_card, phone_number, email, address, customer_type_id)\n" +
                    "VALUES (?, ?, ?, ?, ?, ?,?,?)");

            preparedStatement.setString(1,o.getName());
            preparedStatement.setString(2,o.getDayOfBirth());
            preparedStatement.setBoolean(3,o.isGender());
            preparedStatement.setString(4,o.getIdCard());
            preparedStatement.setInt(5,o.getPhoneNumber());
            preparedStatement.setString(6,o.getEmail());
            preparedStatement.setString(7,o.getAddress());
            preparedStatement.setInt(8,o.getCustomerTypeId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE customer " +
                    "SET name = ?, customer_type_id = ?, day_of_birth = ?,\n" +
                    "gender = ?, id_card = ?, phone_number = ?, email = ?," +
                    " address = ? WHERE id = ?;");
            preparedStatement.setString(1,o.getName());
            preparedStatement.setInt(2,o.getCustomerTypeId());
            preparedStatement.setString(3,o.getDayOfBirth());
            preparedStatement.setBoolean(4, o.isGender());
            preparedStatement.setString(5, o.getIdCard());
            preparedStatement.setInt(6,o.getPhoneNumber());
            preparedStatement.setString(7,o.getEmail());
            preparedStatement.setString(8,o.getAddress());
            preparedStatement.setInt(9,o.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM customer WHERE id = ?;");
            preparedStatement.setInt(1,id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Customer selectById(int id) {
        return null;
    }

    public List<CustomerType> selectCustomerType() {
        List<CustomerType> customerTypes = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM furama_resort.customer_type");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                CustomerType customerType = new CustomerType(id,name);
                customerTypes.add(customerType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customerTypes;
    }
}
