package com.example.finalexam.repository.impl;

import com.example.finalexam.model.Classes;
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
    public boolean insertStudent(Student student) {
        Connection connection = BaseRepository.getConnectDatabase();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO " +
                    "student(name,email,phone_number,point,class_id) \n" +
                    "VALUES (?,?,?,?,?)");
            preparedStatement.setString(1,student.getName());
            preparedStatement.setString(2,student.getEmail());
            preparedStatement.setLong(3,student.getPhoneNumber());
            preparedStatement.setDouble(4,student.getPoint());
            preparedStatement.setInt(5,student.getClassId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateStudent(Student student) {
        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE student SET " +
                    "name = ?, email = ? , phone_number = ?, point = ?, " +
                    "class_id = ? WHERE id = ?; ");
            preparedStatement.setString(1,student.getName());
            preparedStatement.setString(2,student.getEmail());
            preparedStatement.setLong(3,student.getPhoneNumber());
            preparedStatement.setDouble(4,student.getPoint());
            preparedStatement.setInt(5,student.getClassId());
            preparedStatement.setInt(6,student.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteStudent(int id) {
        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM student WHERE id = ?;");
            preparedStatement.setInt(1,id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Student findById(int id) {
        Connection connection = BaseRepository.getConnectDatabase();
        Student student = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT s.*, c.name AS class_name FROM student " +
                    "s JOIN class c ON s.class_id = c.id WHERE s.id = ?");
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id1 = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String email = resultSet.getString(3);
                long phoneNumber = resultSet.getLong(4);
                double point = resultSet.getDouble(5);
                int classId = resultSet.getInt(6);
                String className = resultSet.getString(7);

                student = new Student(id1,name,email,phoneNumber,point,classId,className);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }

    @Override
    public List<Student> selectAllStudent() {
        List<Student> students = new ArrayList<>();

        Connection connection = BaseRepository.getConnectDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "SELECT s.*, c.name AS class_name FROM student s JOIN class c ON s.class_id = c.id;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String email = resultSet.getString(3);
                long phoneNumber = resultSet.getLong(4);
                double point = resultSet.getDouble(5);
                int classId = resultSet.getInt(6);
                String className = resultSet.getString(7);

                Student student = new Student(id,name,email,phoneNumber,point,classId,className);
                students.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return students;
    }

    @Override
    public List<Classes> selectAllClasses() {
        Connection connection = BaseRepository.getConnectDatabase();
        List<Classes> classesList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM student_final.class;");

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);

                Classes classes = new Classes(id,name);
                classesList.add(classes);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return classesList;
    }
}
