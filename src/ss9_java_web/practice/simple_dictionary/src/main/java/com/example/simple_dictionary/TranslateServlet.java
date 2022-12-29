package com.example.simple_dictionary;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "translateServlet", value = "/translate-servlet")
public class TranslateServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển vở");
        dictionary.put("computer", "Máy tính");

        String search = request.getParameter("txtSearch");

        String result = dictionary.get(search);
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        if (result != null) {
            out.println("Word: " + search);
            out.println("Result: " + result);
        } else {
            out.println("Not found");
        }
        out.println("</body></html>");
    }

}