package com.example.customermanagement.service;

import com.example.customermanagement.model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAllCustomer();

    void saveCustomer(Customer customer);

    Customer findById(int id);

    void updateCustomer(int id, Customer customer);

    void removeCustomer(int id);
}
