package com.example.furamaresort.service.impl;

import com.example.furamaresort.model.Division;
import com.example.furamaresort.model.EducationDegree;
import com.example.furamaresort.model.Position;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.repository.impl.EmployeeRepository;
import com.example.furamaresort.service.IService;

import java.util.List;

public class EmployeeService implements IService<Employee> {
    private final EmployeeRepository employeeRepository = new EmployeeRepository();

    @Override
    public boolean insertObject(Employee o) {
        return this.employeeRepository.insertObject(o);
    }

    @Override
    public List<Employee> selectAllObject() {
        return this.employeeRepository.selectAllObject();
    }

    @Override
    public boolean updateObject(Employee o) {
        return this.employeeRepository.updateObject(o);
    }

    @Override
    public boolean deleteObject(int id) {
        return this.employeeRepository.deleteObject(id);
    }

    @Override
    public Employee selectById(int id) {
        return this.employeeRepository.selectById(id);
    }

    public List<Position> selectPosition(){
        return this.employeeRepository.selectPosition();
    }

    public List<EducationDegree> selectEducationDegree(){
        return this.employeeRepository.selectEducationDegree();
    }

    public List<Division> selectDivision(){
        return this.employeeRepository.selectDivision();
    }
}
