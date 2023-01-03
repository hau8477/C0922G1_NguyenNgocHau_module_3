package com.example.listcustomer.servlet;

import com.example.listcustomer.model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://ss-images.saostar.vn/wp700/pc/1617160792140/saostar-i7akgwmdp6crid24.jpg"));
        customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://ss-images.saostar.vn/wp700/pc/1617160792140/saostar-i7akgwmdp6crid24.jpg"));
        customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://ss-images.saostar.vn/wp700/pc/1617160792140/saostar-i7akgwmdp6crid24.jpg"));
        customers.add(new Customer("Trần Đăng Khoa", "1983-08-23", "Hà Tây", "https://ss-images.saostar.vn/wp700/pc/1617160792140/saostar-i7akgwmdp6crid24.jpg"));
        customers.add(new Customer("Nguyễn Đình Thi", "1983-08-24", "Hà Nam", "https://ss-images.saostar.vn/wp700/pc/1617160792140/saostar-i7akgwmdp6crid24.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customers", customers);
        request.getRequestDispatcher("list_customer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
