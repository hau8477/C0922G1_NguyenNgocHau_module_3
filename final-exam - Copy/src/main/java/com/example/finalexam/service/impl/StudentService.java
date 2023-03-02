package com.example.finalexam.service.impl;

import com.example.finalexam.model.Student;
import com.example.finalexam.repository.IStudentRepository;
import com.example.finalexam.repository.impl.StudentRepository;
import com.example.finalexam.service.IStudentService;

import java.util.List;

public class StudentService implements IStudentService {
    private final IStudentRepository studentRepository = new StudentRepository();
    @Override
    public List<Student> selectAll() {
        return this.studentRepository.selectAll();
    }
}
