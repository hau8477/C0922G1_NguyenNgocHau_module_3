package com.example.finalexam.model;

public class CardBook {
    private int idCardBook;
    private int idBook;
    private int idStudent;
    private String nameBook;
    private String nameHuman;
    private String nameStudent;
    private String classes;
    private String dateStart;
    private String dateEnd;

    private boolean status = true;

    public CardBook() {
    }

    public CardBook(int idCardBook, int idBook, int idStudent, String nameBook, String nameHuman, String nameStudent, String classes, String dateStart, String dateEnd) {
        this.idCardBook = idCardBook;
        this.idBook = idBook;
        this.idStudent = idStudent;
        this.nameBook = nameBook;
        this.nameHuman = nameHuman;
        this.nameStudent = nameStudent;
        this.classes = classes;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
    }

    public CardBook(int idBook, int idStudent, String dateStart, String dateEnd) {
        this.idBook = idBook;
        this.idStudent = idStudent;
        this.dateStart = dateStart;
        this.dateEnd = dateEnd;
    }

    public int getIdCardBook() {
        return idCardBook;
    }

    public void setIdCardBook(int idCardBook) {
        this.idCardBook = idCardBook;
    }

    public int getIdBook() {
        return idBook;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    public String getNameBook() {
        return nameBook;
    }

    public void setNameBook(String nameBook) {
        this.nameBook = nameBook;
    }

    public String getNameHuman() {
        return nameHuman;
    }

    public void setNameHuman(String nameHuman) {
        this.nameHuman = nameHuman;
    }

    public String getNameStudent() {
        return nameStudent;
    }

    public void setNameStudent(String nameStudent) {
        this.nameStudent = nameStudent;
    }

    public String getClasses() {
        return classes;
    }

    public void setClasses(String classes) {
        this.classes = classes;
    }

    public String getDateStart() {
        return dateStart;
    }

    public void setDateStart(String dateStart) {
        this.dateStart = dateStart;
    }

    public String getDateEnd() {
        return dateEnd;
    }

    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
