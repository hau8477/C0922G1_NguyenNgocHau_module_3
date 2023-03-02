package com.example.finalexam.repository;

import com.example.finalexam.model.Book;

import java.util.List;

public interface IBookRepository {
    List<Book> selectAll();
}
