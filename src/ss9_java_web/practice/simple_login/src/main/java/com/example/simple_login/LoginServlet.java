package com.example.simple_login;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String userName = req.getParameter("username");
        String password = req.getParameter("password");

        PrintWriter printWriter = resp.getWriter();

        printWriter.println("<html>");

        if("admin".equals(userName) && "admin".equals(password)){
            printWriter.println("<h1> Welcome " + userName + " </h1>");
        } else {
            printWriter.println("<h1> Login Error </h1>");
        }

        printWriter.println("</html>");
    }
}
