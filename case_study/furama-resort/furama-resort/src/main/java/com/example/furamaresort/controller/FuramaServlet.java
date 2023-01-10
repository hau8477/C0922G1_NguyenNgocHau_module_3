package com.example.furamaresort.controller;

import com.example.furamaresort.model.CustomerType;
import com.example.furamaresort.model.Division;
import com.example.furamaresort.model.EducationDegree;
import com.example.furamaresort.model.Position;
import com.example.furamaresort.model.person.inheritance.Customer;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.service.impl.CustomerService;
import com.example.furamaresort.service.impl.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FuramaServlet", value = "/furama")
public class FuramaServlet extends HttpServlet {
    private final EmployeeService employeeService = new EmployeeService();
    private final CustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "employee":
                showHomeEmployee(request, response);
                break;
            case "customer":
                showHomeCustomer(request, response);
                break;
            default:
                request.getRequestDispatcher("home/home.jsp").forward(request, response);
                break;
        }
    }

    private void showHomeCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = this.customerService.selectAllObject();
        List<CustomerType> customerTypes = this.customerService.selectCustomerType();

        request.setAttribute("customerTypes",customerTypes);
        request.setAttribute("customers", customers);
        try {
            request.getRequestDispatcher("customer/customer.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showHomeEmployee(HttpServletRequest request, HttpServletResponse response) {
        List<Employee> employees = this.employeeService.selectAllObject();
        List<Position> positions = this.employeeService.selectPosition();
        List<EducationDegree> educationDegrees = this.employeeService.selectEducationDegree();
        List<Division> divisions = this.employeeService.selectDivision();

        request.setAttribute("positions",positions);
        request.setAttribute("educationDegrees",educationDegrees);
        request.setAttribute("divisions",divisions);
        request.setAttribute("employees", employees);
        try {
            request.getRequestDispatcher("employee/employee.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
