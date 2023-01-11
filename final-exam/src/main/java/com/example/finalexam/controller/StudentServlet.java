package com.example.finalexam.controller;

import com.example.finalexam.model.Classes;
import com.example.finalexam.model.Student;
import com.example.finalexam.service.IStudentService;
import com.example.finalexam.service.impl.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StudentServlet", value = "/student")
public class StudentServlet extends HttpServlet {
    private final IStudentService studentService = new StudentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showFormCreatStudent(request,response);
                break;
            case "edit":
                showFormEditStudent(request,response);
                break;
            case "delete":
                break;
            default:
                listStudent(request,response);
                break;
        }
    }

    private void showFormEditStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idEdit1"));
        Student student = this.studentService.findById(id);
        List<Classes> classesList = this.studentService.selectAllClasses();

        request.setAttribute("classesList",classesList);
        request.setAttribute("student",student);
        try {
            request.getRequestDispatcher("student/edit.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreatStudent(HttpServletRequest request, HttpServletResponse response) {
        List<Classes> classesList = this.studentService.selectAllClasses();
        request.setAttribute("classesList",classesList);

        try {
            request.getRequestDispatcher("student/create.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listStudent(HttpServletRequest request, HttpServletResponse response) {
        List<Student> students = this.studentService.selectAllStudent();
        List<Classes> classesList = this.studentService.selectAllClasses();

        request.setAttribute("students",students);
        request.setAttribute("classesList",classesList);

        try {
            request.getRequestDispatcher("student/list.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createStudent(request,response);
                break;
            case "edit":
                editStudent(request,response);
                break;
            case "delete":
                deleteStudent(request,response);
                break;
            default:
                listStudent(request,response);
                break;
        }
    }

    private void deleteStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));

        request.setAttribute("mess","Xóa thành công");

        if(!this.studentService.deleteStudent(id)){
            request.setAttribute("mess","Xóa thất bại");
        }

        List<Student> students = this.studentService.selectAllStudent();
        List<Classes> classesList = this.studentService.selectAllClasses();

        request.setAttribute("students",students);
        request.setAttribute("classesList",classesList);

        try {
            request.getRequestDispatcher("student/list.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void editStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idEdit"));
        String name = request.getParameter("nameEdit");
        long phoneNumber = Long.parseLong(request.getParameter("phoneNumberEdit"));
        String email = request.getParameter("emailEdit");
        double point = Double.parseDouble(request.getParameter("pointEdit"));
        int classId = Integer.parseInt(request.getParameter("classIdEdit"));

        Student student = new Student(id,name,phoneNumber,email,point,classId);

        request.setAttribute("mess","Chỉnh sửa thành công");

        if(!this.studentService.updateStudent(student)){
            request.setAttribute("mess","Chỉnh sửa thất bại");
        }

        List<Student> students = this.studentService.selectAllStudent();
        List<Classes> classesList = this.studentService.selectAllClasses();

        request.setAttribute("students",students);
        request.setAttribute("classesList",classesList);

        try {
            request.getRequestDispatcher("student/edit.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createStudent(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        long phoneNumber = Long.parseLong(request.getParameter("phoneNumber"));
        String email = request.getParameter("email");
        double point = Double.parseDouble(request.getParameter("point"));
        int classId = Integer.parseInt(request.getParameter("classId"));

        Student student = new Student(name,phoneNumber,email,point,classId);

        request.setAttribute("mess","Thêm mới thành công");

        if(!this.studentService.insertStudent(student)){
            request.setAttribute("mess","Thêm mới thất bại");
        }

        List<Student> students = this.studentService.selectAllStudent();
        List<Classes> classesList = this.studentService.selectAllClasses();

        request.setAttribute("students",students);
        request.setAttribute("classesList",classesList);

        try {
            request.getRequestDispatcher("student/create.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
