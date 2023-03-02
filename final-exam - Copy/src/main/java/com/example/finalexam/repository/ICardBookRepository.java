package com.example.finalexam.repository;

import com.example.finalexam.model.CardBook;

import java.util.List;

public interface ICardBookRepository {
    List<CardBook> selectAll();

    boolean insertCardBook(CardBook cardBook);

    List<CardBook> search(String nameStudent, String nameBook);
}
