package com.example.furamaresort.controller;

import com.example.furamaresort.model.Division;
import com.example.furamaresort.model.EducationDegree;
import com.example.furamaresort.model.Position;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.service.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "EmployeeServlet", value = "/employee")
public class EmployeeServlet extends HttpServlet {
    private final EmployeeService employeeService = new EmployeeService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createEmployee(request, response);
                break;
            case "update":
                updateEmployee(request, response);
                break;
            case "delete":
                deleteEmployee(request,response);
                break;
            default:

                break;
        }
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));

        request.setAttribute("mess", "Successfully delete!");
        if (!this.employeeService.deleteObject(id)) {
            request.setAttribute("mess", "Delete failure!");
        }
        List<Employee> employees = this.employeeService.selectAllObject();
        request.setAttribute("employees", employees);
        try {
            request.getRequestDispatcher("employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id1"));
        String name = request.getParameter("name");
        String dayOfBirth = request.getParameter("dayOfBirth");
        String idCard = request.getParameter("idCard");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int educationDegreeId = Integer.parseInt(request.getParameter("educationDegreeId"));
        int divisionId = Integer.parseInt(request.getParameter("divisionId"));

        Employee employee = new Employee(name, dayOfBirth, idCard, Integer.parseInt(phoneNumber), email, id,
                salary, address, positionId, educationDegreeId, divisionId);
        List<Position> positions = this.employeeService.selectPosition();
        List<EducationDegree> educationDegrees = this.employeeService.selectEducationDegree();
        List<Division> divisions = this.employeeService.selectDivision();

        request.setAttribute("positions",positions);
        request.setAttribute("educationDegrees",educationDegrees);
        request.setAttribute("divisions",divisions);

        request.setAttribute("mess", "Successfully update!");
        if (!this.employeeService.updateObject(employee)) {
            request.setAttribute("mess", "Update failure!");
        }
        List<Employee> employees = this.employeeService.selectAllObject();
        request.setAttribute("employees", employees);
        try {
            request.getRequestDispatcher("employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String dayOfBirth = request.getParameter("dayOfBirth");
        String idCard = request.getParameter("idCard");
        double salary = Double.parseDouble(request.getParameter("salary"));
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int positionId = Integer.parseInt(request.getParameter("positionId"));
        int educationDegreeId = Integer.parseInt(request.getParameter("educationDegreeId"));
        int divisionId = Integer.parseInt(request.getParameter("divisionId"));

        Employee employee = new Employee(name, dayOfBirth, idCard, Integer.parseInt(phoneNumber), email,
                salary, address, positionId, educationDegreeId, divisionId);
        List<Position> positions = this.employeeService.selectPosition();
        List<EducationDegree> educationDegrees = this.employeeService.selectEducationDegree();
        List<Division> divisions = this.employeeService.selectDivision();

        request.setAttribute("positions",positions);
        request.setAttribute("educationDegrees",educationDegrees);
        request.setAttribute("divisions",divisions);
        request.setAttribute("mess", "Successfully added new!");

        if (!this.employeeService.insertObject(employee)) {
            request.setAttribute("mess", "Add new failure!");
        }
        List<Employee> employees = this.employeeService.selectAllObject();
        request.setAttribute("employees", employees);

        try {
            request.getRequestDispatcher("employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
