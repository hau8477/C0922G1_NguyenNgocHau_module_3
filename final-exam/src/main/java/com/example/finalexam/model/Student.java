package com.example.finalexam.model;

public class Student {
    private int id;
    private String name;
    private String email;
    private long phoneNumber;
    private double point;
    private int classId;
    private String className;

    public Student() {
    }

    public Student(int id, String name, String email, long phoneNumber, double point, int classId, String className) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.point = point;
        this.classId = classId;
        this.className = className;
    }

    public Student(String name, long phoneNumber, String email, double point, int classId) {
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.point = point;
        this.classId = classId;
    }

    public Student(int id, String name, long phoneNumber, String email, double point, int classId) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.point = point;
        this.classId = classId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public double getPoint() {
        return point;
    }

    public void setPoint(double point) {
        this.point = point;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }
}
