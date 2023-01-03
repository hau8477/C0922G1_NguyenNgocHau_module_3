package com.example.productmanagement.service.impl;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static final Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1,new Product(1,"Iphone 4",400,"Điện thoại","Iphone"));
        products.put(2,new Product(2,"Iphone 5",500,"Điện thoại","Iphone"));
        products.put(3,new Product(3,"Samsung",10000,"Điện thoại","Samsung"));
        products.put(4,new Product(4,"Iphone 13",30000,"Điện thoại","Iphone"));
    }
    @Override
    public List<Product> findAllProduct() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void saveProduct(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public void updateProduct(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void removeProduct(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String nameProduct) {
        List<Product> products1 = new ArrayList<>(products.values());
        List<Product> products2 = new ArrayList<>();
        for (Product product:products1) {
            if(nameProduct.equals(product.getNameProduct())){
                products2.add(product);
            }
        }
        return products2;
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }
}
