package com.example.finalexam.service.impl;

import com.example.finalexam.model.Classes;
import com.example.finalexam.model.Student;
import com.example.finalexam.repository.IStudentRepository;
import com.example.finalexam.repository.impl.StudentRepository;
import com.example.finalexam.service.IStudentService;

import java.util.List;

public class StudentService implements IStudentService {
    private final IStudentRepository studentRepository = new StudentRepository();
    @Override
    public boolean insertStudent(Student student) {
        return this.studentRepository.insertStudent(student);
    }

    @Override
    public boolean updateStudent(Student student) {
        return this.studentRepository.updateStudent(student);
    }

    @Override
    public boolean deleteStudent(int id) {
        return this.studentRepository.deleteStudent(id);
    }

    @Override
    public Student findById(int id) {
        return this.studentRepository.findById(id);
    }

    @Override
    public List<Student> selectAllStudent() {
        return this.studentRepository.selectAllStudent();
    }

    @Override
    public List<Classes> selectAllClasses() {
        return this.studentRepository.selectAllClasses();
    }
}
