package com.example.calculator.servlet;

import com.example.calculator.model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(request.getParameter("first_operand"));
        double secondOperand = Double.parseDouble(request.getParameter("second_operand"));
        String operator = request.getParameter("operator");
        double result;
        StringBuilder stringException = new StringBuilder();

        try {
            result = Calculator.calculate(firstOperand, secondOperand, operator);
            request.setAttribute("result", result);
            request.setAttribute("first_operand", firstOperand);
            request.setAttribute("second_operand", secondOperand);
            request.setAttribute("operator", operator);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (ArithmeticException e) {
            stringException.append(e.getMessage());
            request.setAttribute("stringException", stringException);
            request.getRequestDispatcher("result_exception.jsp").forward(request, response);
        }
    }
}
