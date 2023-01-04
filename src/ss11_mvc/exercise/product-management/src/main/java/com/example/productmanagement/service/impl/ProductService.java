package com.example.productmanagement.service.impl;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.repository.IProductRepository;
import com.example.productmanagement.repository.impl.ProductRepository;
import com.example.productmanagement.service.IProductService;

import java.util.*;

public class ProductService implements IProductService {
    private final IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAllProduct() {
        return this.productRepository.findAllProduct();
    }

    @Override
    public void saveProduct(Product product) {
        this.productRepository.saveProduct(product);
    }

    @Override
    public void updateProduct(int id, Product product) {
        this.productRepository.updateProduct(id, product);
    }

    @Override
    public void removeProduct(int id) {
        this.productRepository.removeProduct(id);
    }

    @Override
    public List<Product> findByName(String nameProduct) {
        return this.productRepository.findByName(nameProduct);
    }

    @Override
    public Product findById(int id) {
        return this.productRepository.findById(id);
    }
}
