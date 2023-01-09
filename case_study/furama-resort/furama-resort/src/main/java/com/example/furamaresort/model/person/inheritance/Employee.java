package com.example.furamaresort.model.person.inheritance;

import com.example.furamaresort.model.person.Person;

public class Employee extends Person {
    private int id;
    private String educationDegree;
    private String position;
    private double salary;

    private String division;

    private String address;

    private int positionId;
    private int educationDegreeId;
    private int divisionId;

    public Employee() {
    }

    public Employee(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, int id, String educationDegree, String position, double salary, String division, String address) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
        this.division = division;
        this.address = address;
    }

    public Employee(String name, String dayOfBirth, String idCard, int phoneNumber, String email, int id, String educationDegree, String position, double salary, String division, String address, int positionId, int educationDegreeId, int divisionId) {
        super(name, dayOfBirth, idCard, phoneNumber, email);
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
        this.division = division;
        this.address = address;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public Employee(int id, String educationDegree, String position, double salary, String address, int positionId, int educationDegreeId, int divisionId) {
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
        this.address = address;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public Employee(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, int id, String educationDegree, String position, double salary, String address, int positionId, int educationDegreeId, int divisionId) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
        this.address = address;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public Employee(String name, String dayOfBirth, String idCard, int phoneNumber, String email, int id, double salary, String address, int positionId, int educationDegreeId, int divisionId) {
        super(name, dayOfBirth, idCard, phoneNumber, email);
        this.id = id;
        this.salary = salary;
        this.address = address;
        this.positionId = positionId;
        this.educationDegreeId = educationDegreeId;
        this.divisionId = divisionId;
    }

    public Employee(int id, String educationDegree, String position, Double salary) {
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
    }

    public Employee(String name, String dayOfBirth, boolean gender, String idCard, int phoneNumber, String email, int id, String educationDegree, String position, double salary) {
        super(name, dayOfBirth, gender, idCard, phoneNumber, email);
        this.id = id;
        this.educationDegree = educationDegree;
        this.position = position;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEducationDegree() {
        return educationDegree;
    }

    public void setEducationDegree(String educationDegree) {
        this.educationDegree = educationDegree;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }

    public int getEducationDegreeId() {
        return educationDegreeId;
    }

    public void setEducationDegreeId(int educationDegreeId) {
        this.educationDegreeId = educationDegreeId;
    }

    public int getDivisionId() {
        return divisionId;
    }

    public void setDivisionId(int divisionId) {
        this.divisionId = divisionId;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }
}
