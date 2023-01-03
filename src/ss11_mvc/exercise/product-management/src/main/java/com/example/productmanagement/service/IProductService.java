package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAllProduct();
    void saveProduct(Product product);
    void updateProduct(int id, Product product);
    void removeProduct(int id);
    List<Product> findByName(String nameProduct);
    Product findById(int id);
}
