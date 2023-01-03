package com.example.customermanagement.service.impl;

import com.example.customermanagement.model.Customer;
import com.example.customermanagement.service.ICustomerService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {

    private static final Map<Integer,Customer> customers = new HashMap<>();

    static {
        customers.put(1,new Customer(1,"Hậu","hau123@gmail.com","Quảng Nam"));
        customers.put(2,new Customer(2,"Hùng","hung123@gmail.com","Nghệ An"));
        customers.put(3,new Customer(3,"Ngọc Vũ","ngocvu123@gmail.com","Quảng Nam"));
        customers.put(4,new Customer(4,"Đức Vũ","ducvu123@gmail.com","Quảng Trị"));
        customers.put(5,new Customer(5,"Diệu Quỳnh","dieuquynh123@gmail.com","Đà Nẵng"));
    }

    @Override
    public List<Customer> findAllCustomer() {
        return new ArrayList<>(customers.values());
    }

    @Override
    public void saveCustomer(Customer customer) {
        customers.put(customer.getId(),customer);
    }

    @Override
    public Customer findById(int id) {
        return customers.get(id);
    }

    @Override
    public void updateCustomer(int id, Customer customer) {
        customers.put(id,customer);
    }

    @Override
    public void removeCustomer(int id) {
        customers.remove(id);
    }
}
