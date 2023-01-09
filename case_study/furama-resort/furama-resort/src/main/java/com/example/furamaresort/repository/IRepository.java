package com.example.furamaresort.repository;

import java.util.List;

public interface IRepository<O> {
    boolean insertObject(O o);
    List<O> selectAllObject();
    boolean updateObject(O o);
    boolean deleteObject(int id);

    O selectById(int id);
}
