package com.example.finalexam.repository.impl;

import com.example.finalexam.model.Student;
import com.example.finalexam.repository.BaseRepository;
import com.example.finalexam.repository.IStudentRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    @Override
    public List<Student> selectAll() {
        List<Student> students = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM truong_hoc.hoc_sinh;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String classes = resultSet.getString(3);

                Student student = new Student(id,name,classes);
                students.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }
}
