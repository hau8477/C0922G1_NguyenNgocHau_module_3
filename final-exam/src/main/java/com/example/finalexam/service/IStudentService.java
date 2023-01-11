package com.example.finalexam.service;

import com.example.finalexam.model.Classes;
import com.example.finalexam.model.Student;

import java.util.List;

public interface IStudentService {
    boolean insertStudent(Student student);
    boolean updateStudent(Student student);
    boolean deleteStudent(int id);
    Student findById(int id);
    List<Student> selectAllStudent();
    List<Classes> selectAllClasses();
}
