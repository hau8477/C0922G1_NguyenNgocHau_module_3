package com.example.product_discount_calculator;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "discountServlet", value = "/product-discount-calculator-servlet")
public class DiscountServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        double listPrice = Double.parseDouble(request.getParameter("list_price"));
        double discountPercent = Double.parseDouble(request.getParameter("discount_percent"));
        String productDescription = request.getParameter("product_description");

        double discountAmount = listPrice * discountPercent * 0.01;

        request.setAttribute("list_price", listPrice);
        request.setAttribute("discount_percent", discountPercent);
        request.setAttribute("product_description", productDescription);
        request.setAttribute("discount_amount", discountAmount);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }

}