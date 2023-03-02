package com.example.finalexam.service.impl;

import com.example.finalexam.model.CardBook;
import com.example.finalexam.repository.ICardBookRepository;
import com.example.finalexam.repository.impl.CardBookRepository;
import com.example.finalexam.service.ICardBookService;

import java.util.List;

public class CardBookService implements ICardBookService {
    private final ICardBookRepository cardBookRepository = new CardBookRepository();
    @Override
    public List<CardBook> selectAll() {
        return this.cardBookRepository.selectAll();
    }

    @Override
    public boolean insertCardBook(CardBook cardBook) {
        return this.cardBookRepository.insertCardBook(cardBook);
    }

    @Override
    public List<CardBook> search(String nameStudent, String nameBook) {
        return this.cardBookRepository.search(nameStudent,nameBook);
    }
}
