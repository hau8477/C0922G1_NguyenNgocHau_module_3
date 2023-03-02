package com.example.finalexam.service.impl;

import com.example.finalexam.model.Book;
import com.example.finalexam.repository.IBookRepository;
import com.example.finalexam.repository.impl.BookRepository;
import com.example.finalexam.service.IBookService;

import java.util.List;

public class BookService implements IBookService {
    private final IBookRepository bookRepository = new BookRepository();

    @Override
    public List<Book> selectAll() {
        return this.bookRepository.selectAll();
    }
}
