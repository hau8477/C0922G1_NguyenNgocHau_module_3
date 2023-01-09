package com.example.furamaresort.service;

import com.example.furamaresort.model.person.inheritance.Employee;

import java.util.List;

public interface IService<O> {
    boolean insertObject(O o);
    List<O> selectAllObject();
    boolean updateObject(O o);
    boolean deleteObject(int id);

    O selectById(int id);
}
