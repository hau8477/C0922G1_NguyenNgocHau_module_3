package com.example.java_web_currency_converter;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "convertServlet", value = "/convert")
public class ConverterServlet extends HttpServlet {

    public void init() {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        double rate = Double.parseDouble(req.getParameter("rate"));
        double usd = Double.parseDouble(req.getParameter("usd"));

        double vnd = rate * usd;

        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<h1>Rate: " + rate + "</h1>");
        out.println("<h1>USD: " + usd + "</h1>");
        out.println("<h1>VND: " + vnd + "</h1>");
        out.println("</html>");
    }

    public void destroy() {
    }
}