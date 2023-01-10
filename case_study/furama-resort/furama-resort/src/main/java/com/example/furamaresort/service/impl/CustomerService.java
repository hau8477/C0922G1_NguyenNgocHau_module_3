package com.example.furamaresort.service.impl;

import com.example.furamaresort.model.CustomerType;
import com.example.furamaresort.model.person.inheritance.Customer;
import com.example.furamaresort.repository.IRepository;
import com.example.furamaresort.repository.impl.CustomerRepository;
import com.example.furamaresort.service.IService;

import java.util.List;

public class CustomerService implements IService<Customer> {
    private final CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public boolean insertObject(Customer o) {
        return this.customerRepository.insertObject(o);
    }

    @Override
    public List<Customer> selectAllObject() {
        return this.customerRepository.selectAllObject();
    }

    @Override
    public boolean updateObject(Customer o) {
        return this.customerRepository.updateObject(o);
    }

    @Override
    public boolean deleteObject(int id) {
        return this.customerRepository.deleteObject(id);
    }

    @Override
    public Customer selectById(int id) {
        return this.customerRepository.selectById(id);
    }

    public List<CustomerType> selectCustomerType(){
        return this.customerRepository.selectCustomerType();
    }
}
