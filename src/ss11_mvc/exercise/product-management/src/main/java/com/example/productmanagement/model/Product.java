package com.example.productmanagement.model;

public class Product {
    // Các thuộc tính của sản phẩm bao gồm: id, tên sản phẩm, giá sản phẩm, mô tả của sản phẩm, nhà sản xuất.
    private int id;
    private String nameProduct;
    private double prices;
    private String describe;
    private String brand;

    public Product() {
    }

    public Product(int id, String nameProduct, double prices, String describe, String brand) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.prices = prices;
        this.describe = describe;
        this.brand = brand;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setName(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public double getPrices() {
        return prices;
    }

    public void setPrices(double prices) {
        this.prices = prices;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }
}
