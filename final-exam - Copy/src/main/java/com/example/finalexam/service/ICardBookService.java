package com.example.finalexam.service;

import com.example.finalexam.model.CardBook;

import java.util.List;

public interface ICardBookService {
    List<CardBook> selectAll();

    boolean insertCardBook(CardBook cardBook);

    List<CardBook> search(String nameStudent, String nameBook);

}
