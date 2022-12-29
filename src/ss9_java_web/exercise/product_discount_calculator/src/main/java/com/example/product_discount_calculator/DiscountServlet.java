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

        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;

        request.setAttribute("discount_amount", discountAmount);
        request.setAttribute("discount_price", discountPrice);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }

}