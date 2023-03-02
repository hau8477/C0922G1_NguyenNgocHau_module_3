package com.example.finalexam.repository.impl;

import com.example.finalexam.model.Book;
import com.example.finalexam.repository.BaseRepository;
import com.example.finalexam.repository.IBookRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookRepository implements IBookRepository {

    @Override
    public List<Book> selectAll() {
        List<Book> books = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM truong_hoc.sach;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String human = resultSet.getString(3);
                String description = resultSet.getString(4);
                int quantity = resultSet.getInt(5);

                Book book = new Book(id,name,human,description,quantity);
                books.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return books;
    }
}
