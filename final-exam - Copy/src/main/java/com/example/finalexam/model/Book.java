package com.example.finalexam.model;

public class Book {
    private int id;
    private String name;
    private String human;
    private String description;
    private int quantity;


    public Book() {
    }

    public Book(int id, String name, String human, String description, int quantity) {
        this.id = id;
        this.name = name;
        this.human = human;
        this.description = description;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHuman() {
        return human;
    }

    public void setHuman(String human) {
        this.human = human;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
