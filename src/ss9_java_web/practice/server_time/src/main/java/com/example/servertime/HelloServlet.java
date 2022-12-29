package com.example.servertime;

import java.io.*;
import java.util.Date;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/index")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Date today = new Date();

        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + today + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}