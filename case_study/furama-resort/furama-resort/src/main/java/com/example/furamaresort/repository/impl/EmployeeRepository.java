package com.example.furamaresort.repository.impl;

import com.example.furamaresort.model.Division;
import com.example.furamaresort.model.EducationDegree;
import com.example.furamaresort.model.Position;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.repository.BaseRepository;
import com.example.furamaresort.repository.IRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepository implements IRepository<Employee> {
    @Override
    public boolean insertObject(Employee o) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO employee(name," +
                    " day_of_birth, id_card, salary, phone_number, email, address, position_id, education_degree_id,\n" +
                    "                      division_id)\n" +
                    "VALUES (?, ?, ?, ?, ?, ?,\n" +
                    "        ?, ?, ?, ?)");
            preparedStatement.setString(1,o.getName());
            preparedStatement.setString(2,o.getDayOfBirth());
            preparedStatement.setString(3,o.getIdCard());
            preparedStatement.setDouble(4,o.getSalary());
            preparedStatement.setInt(5,o.getPhoneNumber());
            preparedStatement.setString(6,o.getEmail());
            preparedStatement.setString(7,o.getAddress());
            preparedStatement.setInt(8,o.getPositionId());
            preparedStatement.setInt(9,o.getEducationDegreeId());
            preparedStatement.setInt(10,o.getDivisionId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Employee> selectAllObject() {
        List<Employee> employees = new ArrayList<>();
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT e.id, e.name, e.day_of_birth,\n" +
                    "                     e.id_card, e.salary, e.phone_number, e.email, e.address, p.name as position,\n" +
                    "                     ed.name as education_degree, d.name as division, p.id as p_id, ed.id as ed_id, d.id as d_id FROM \n" +
                    "                    employee e JOIN position p ON e.position_id = p.id\n" +
                    "                    JOIN education_degree ed ON e.education_degree_id = ed.id\n" +
                    "                              JOIN division d ON e.division_id = d.id;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String dayOfBirth = resultSet.getString(3);
                String idCard = resultSet.getString(4);
                double salary = resultSet.getDouble(5);
                int phoneNumber = resultSet.getInt(6);
                String email = resultSet.getString(7);
                String address = resultSet.getString(8);
                String position = resultSet.getString(9);
                String educationDegree = resultSet.getString(10);
                String division = resultSet.getString(11);
                int positionId = resultSet.getInt(12);
                int educationDegreeId = resultSet.getInt(13);
                int divisionId = resultSet.getInt(14);
                Employee employee = new Employee(name,dayOfBirth,idCard,phoneNumber,email,id,educationDegree,
                        position,salary,division,address,positionId,educationDegreeId,divisionId);
                employees.add(employee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employees;
    }

    @Override
    public boolean updateObject(Employee o) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(
                    "UPDATE employee SET name = ?, day_of_birth = ?, id_card = ?," +
                    " phone_number = ?, salary = ?, \n" +
                    "email = ?, address = ?, position_id = ?, education_degree_id = ?," +
                    " division_id = ? WHERE id = ?; ");
            preparedStatement.setString(1,o.getName());
            preparedStatement.setString(2,o.getDayOfBirth());
            preparedStatement.setString(3,o.getIdCard());
            preparedStatement.setInt(4,o.getPhoneNumber());
            preparedStatement.setDouble(5,o.getSalary());
            preparedStatement.setString(6,o.getEmail());
            preparedStatement.setString(7,o.getAddress());
            preparedStatement.setInt(8,o.getPositionId());
            preparedStatement.setInt(9,o.getEducationDegreeId());
            preparedStatement.setInt(10,o.getDivisionId());
            preparedStatement.setInt(11,o.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM employee WHERE id = ?");
            preparedStatement.setInt(1,id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Employee selectById(int id) {
        Employee employee = null;
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT e.id, e.name, e.day_of_birth,\n" +
                    "                    e.id_card, e.salary, e.phone_number, e.email, e.address, p.name as position,\n" +
                    "                    ed.name as education_degree, d.name as division, p.id as position_id, ed.id as education_id, d.id as division_id FROM\n" +
                    "                    employee e JOIN position p ON e.position_id = p.id\n" +
                    "\t\t\t\tJOIN education_degree ed ON e.education_degree_id = ed.id\n" +
                    "                               JOIN division d ON e.division_id = d.id WHERE e.id =?;");
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id1 = resultSet.getInt(1);
                String name = resultSet.getString(2);
                String dayOfBirth = resultSet.getString(3);
                String idCard = resultSet.getString(4);
                double salary = resultSet.getDouble(5);
                int phoneNumber = resultSet.getInt(6);
                String email = resultSet.getString(7);
                String address = resultSet.getString(8);
                String position = resultSet.getString(9);
                String educationDegree = resultSet.getString(10);
                String division = resultSet.getString(11);
                int positionId = resultSet.getInt(12);
                int educationDegreeId = resultSet.getInt(13);
                int divisionId = resultSet.getInt(14);
                employee = new Employee(name,dayOfBirth,idCard,phoneNumber,email,id1,educationDegree,
                        position,salary,division,address,positionId,educationDegreeId,divisionId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return employee;
    }

    public List<Position> selectPosition(){
        List<Position> positions = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM furama_resort.position");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                Position position = new Position(id,name);
                positions.add(position);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return positions;
    }

    public List<EducationDegree> selectEducationDegree(){
        List<EducationDegree> educationDegrees = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM furama_resort.education_degree");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                EducationDegree educationDegree = new EducationDegree(id,name);
                educationDegrees.add(educationDegree);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return educationDegrees;
    }

    public List<Division> selectDivision(){
        List<Division> divisions = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM furama_resort.division");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                Division division = new Division(id,name);
                divisions.add(division);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return divisions;
    }
}
