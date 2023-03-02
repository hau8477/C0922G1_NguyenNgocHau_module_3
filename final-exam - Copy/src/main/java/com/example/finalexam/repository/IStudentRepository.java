package com.example.finalexam.repository;

import com.example.finalexam.model.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> selectAll();
}
