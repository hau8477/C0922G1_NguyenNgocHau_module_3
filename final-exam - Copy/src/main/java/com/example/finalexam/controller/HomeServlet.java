package com.example.finalexam.controller;

import com.example.finalexam.model.Book;
import com.example.finalexam.model.CardBook;
import com.example.finalexam.model.Student;
import com.example.finalexam.service.IBookService;
import com.example.finalexam.service.ICardBookService;
import com.example.finalexam.service.IStudentService;
import com.example.finalexam.service.impl.BookService;
import com.example.finalexam.service.impl.CardBookService;
import com.example.finalexam.service.impl.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    private final IBookService bookService = new BookService();
    private final ICardBookService cardBookService = new CardBookService();

    private final IStudentService studentService = new StudentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action == null) {
            action = "";
        }

        switch (action){
            case "book":
                homeBook(request,response);
                break;
            case "bookorder":
                homeBookOrder(request,response);
                break;
            default:
                home(request,response);
        }
    }

    private void homeBookOrder(HttpServletRequest request, HttpServletResponse response) {
        List<CardBook> cardBooks = this.cardBookService.selectAll();

        request.setAttribute("cardBooks",cardBooks);
        try {
            request.getRequestDispatcher("book/list-order.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void homeBook(HttpServletRequest request, HttpServletResponse response) {
        List<Book> books = this.bookService.selectAll();
        List<Student> students = this.studentService.selectAll();

        request.setAttribute("books",books);
        request.setAttribute("students",students);
        try {
            request.getRequestDispatcher("book/list.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void home(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("home.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
