package com.example.furamaresort.model.person.inheritance;

import com.example.furamaresort.model.person.Person;

public class Customer extends Person {
    private int id;
    private int customerTypeId;
    private String customerType;
    private String address;

    public Customer() {
    }

    public Customer(int id, String customerType, String address) {
        this.id = id;
        this.customerType = customerType;
        this.address = address;
    }

    public Customer(int id, int customerTypeId, String address) {
        this.id = id;
        this.customerTypeId = customerTypeId;
        this.address = address;
    }

    public Customer(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, int id, int customerTypeId, String address) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.id = id;
        this.customerTypeId = customerTypeId;
        this.address = address;
    }

    public Customer(String name, String dayOfBirth, String idCard, int phoneNumber, String email, int id, int customerTypeId, String address) {
        super(name, dayOfBirth, idCard, phoneNumber, email);
        this.id = id;
        this.customerTypeId = customerTypeId;
        this.address = address;
    }

    public Customer(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, int id, String customerType, String address) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.id = id;
        this.customerType = customerType;
        this.address = address;
    }

    public Customer(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, String address,int customerTypeId) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.address = address;
        this.customerTypeId = customerTypeId;
    }

    public Customer(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, String address,int customerTypeId, int id) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.address = address;
        this.customerTypeId = customerTypeId;
        this.id = id;
    }

    public Customer(String name, String dayOfBirth, String idCard, int phoneNumber, String email, int id, String customerType, String address) {
        super(name, dayOfBirth, idCard, phoneNumber, email);
        this.id = id;
        this.customerType = customerType;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }
}
