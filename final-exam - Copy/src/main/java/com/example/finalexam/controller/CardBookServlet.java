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
import java.util.Date;
import java.util.List;

@WebServlet(name = "CardBookServlet", value = "/cardbook")
public class CardBookServlet extends HttpServlet {
    private final IBookService bookService = new BookService();
    private final ICardBookService cardBookService = new CardBookService();

    private final IStudentService studentService = new StudentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        search(request,response);
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String nameBook = request.getParameter("searchBook");
        String nameStudent = request.getParameter("searchStudent");

        List<CardBook> cardBooks = this.cardBookService.search(nameStudent,nameBook);

        request.setAttribute("cardBooks",cardBooks);
        try {
            request.getRequestDispatcher("book/list-order.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action == null) {
            action = "";
        }

        switch (action){
            case "booking":
                bookingBook(request,response);
                break;
        }
    }

    private void bookingBook(HttpServletRequest request, HttpServletResponse response) {
        int idBook = Integer.parseInt(request.getParameter("idBookOrder"));
        int idStudent = Integer.parseInt(request.getParameter("idStudent"));
        String dateStart = request.getParameter("dateStart");
        String dateEnd = request.getParameter("dateEnd");

        CardBook cardBook = new CardBook(idBook,idStudent,dateStart,dateEnd);

        request.setAttribute("mess","Mượn sách thành công");
        if(!this.cardBookService.insertCardBook(cardBook)){
            request.setAttribute("mess","Mượn sách thất bại");
        }

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
}
