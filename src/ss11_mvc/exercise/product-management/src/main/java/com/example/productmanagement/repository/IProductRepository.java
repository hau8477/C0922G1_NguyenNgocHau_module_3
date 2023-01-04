package com.example.productmanagement.repository;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAllProduct();

    void saveProduct(Product product);

    void updateProduct(int id, Product product);

    void removeProduct(int id);

    List<Product> findByName(String nameProduct);

    Product findById(int id);
}
