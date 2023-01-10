package com.example.furamaresort.controller;

import com.example.furamaresort.model.CustomerType;
import com.example.furamaresort.model.person.inheritance.Customer;
import com.example.furamaresort.model.person.inheritance.Employee;
import com.example.furamaresort.service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private final CustomerService customerService = new CustomerService();

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
                createCustomer(request, response);
                break;
            case "update":
                updateCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            default:

                break;
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));

        request.setAttribute("mess", "Successfully delete!");

        if (!this.customerService.deleteObject(id)) {
            request.setAttribute("mess", "Delete failure!");
        }
        List<CustomerType> customerTypes = this.customerService.selectCustomerType();
        List<Customer> customers = this.customerService.selectAllObject();

        request.setAttribute("customerTypes", customerTypes);
        request.setAttribute("customers", customers);

        try {
            request.getRequestDispatcher("customer/customer.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id1"));
        String name = request.getParameter("name1");
        String dayOfBirth = request.getParameter("dayOfBirth1");
        boolean gender = request.getParameter("gender1").equals("Nam");
        String idCard = request.getParameter("idCard1");
        String phoneNumber = request.getParameter("phoneNumber1");
        String email = request.getParameter("email1");
        String address = request.getParameter("address1");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId1"));

        Customer customer = new Customer(name, dayOfBirth, gender, idCard,
                Integer.parseInt(phoneNumber), email, address, customerTypeId, id);
        List<CustomerType> customerTypes = this.customerService.selectCustomerType();

        request.setAttribute("customerTypes", customerTypes);
        request.setAttribute("mess", "Successfully update!");

        if (!this.customerService.updateObject(customer)) {
            request.setAttribute("mess", "Update failure!");
        }
        List<Customer> customers = this.customerService.selectAllObject();
        request.setAttribute("customers", customers);

        try {
            request.getRequestDispatcher("customer/customer.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String dayOfBirth = request.getParameter("dayOfBirth");
        boolean gender = request.getParameter("gender").equals("Nam");
        String idCard = request.getParameter("idCard");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int customerTypeId = Integer.parseInt(request.getParameter("customerTypeId"));


        Customer customer = new Customer(name, dayOfBirth, gender, idCard,
                Integer.parseInt(phoneNumber), email, address, customerTypeId);
        List<CustomerType> customerTypes = this.customerService.selectCustomerType();

        request.setAttribute("customerTypes", customerTypes);
        request.setAttribute("mess", "Successfully added new!");

        if (!this.customerService.insertObject(customer)) {
            request.setAttribute("mess", "Add new failure!");
        }
        List<Customer> customers = this.customerService.selectAllObject();
        request.setAttribute("customers", customers);

        try {
            request.getRequestDispatcher("customer/customer.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
