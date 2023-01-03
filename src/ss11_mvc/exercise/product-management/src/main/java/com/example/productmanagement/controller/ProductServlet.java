package com.example.productmanagement.controller;

import com.example.productmanagement.model.Product;
import com.example.productmanagement.service.IProductService;
import com.example.productmanagement.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private final IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewProduct(request, response);
                break;
            case "find":
                findProduct(request, response);
                break;
            default:
                listProduct(request, response);
                break;
        }
    }

    private void findProduct(HttpServletRequest request, HttpServletResponse response) {
        String nameProduct = request.getParameter("nameProduct");
        List<Product> products = this.productService.findByName(nameProduct);

        if (products == null) {
            try {
                request.getRequestDispatcher("error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("products", products);
            try {
                request.getRequestDispatcher("product/find.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);

        if (product == null) {
            try {
                request.getRequestDispatcher("error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("product", product);
            try {
                request.getRequestDispatcher("product/view.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);

        if (product == null) {
            try {
                request.getRequestDispatcher("error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("product", product);
            try {
                request.getRequestDispatcher("product/delete.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);

        if (product == null) {
            try {
                request.getRequestDispatcher("error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            request.setAttribute("product", product);
            try {
                request.getRequestDispatcher("product/edit.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("product/create.jsp").forward(request, response);
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
                createProduct(request, response);
                break;
            case "edit":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            default:
                listProduct(request, response);
                break;
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = this.productService.findById(id);

        if (product == null) {
            try {
                request.getRequestDispatcher("error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            this.productService.removeProduct(id);
            try {
                response.sendRedirect("product");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameProduct = request.getParameter("nameProduct");
        double prices = Double.parseDouble(request.getParameter("prices"));
        String describe = request.getParameter("describe");
        String brand = request.getParameter("brand");
        Product product = this.productService.findById(id);

        if (product == null) {
            try {
                request.getRequestDispatcher("product/error-404.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        } else {
            product.setNameProduct(nameProduct);
            product.setPrices(prices);
            product.setDescribe(describe);
            product.setBrand(brand);
            this.productService.updateProduct(id, product);
            request.setAttribute("message", "Product information was updated");
            try {
                request.setAttribute("product", product);
                request.getRequestDispatcher("product/edit.jsp").forward(request, response);
            } catch (ServletException | IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String nameProduct = request.getParameter("nameProduct");
        double prices = Double.parseDouble(request.getParameter("prices"));
        String describe = request.getParameter("describe");
        String brand = request.getParameter("brand");

        this.productService.saveProduct(new Product(id, nameProduct, prices, describe, brand));
        request.setAttribute("message", "New customer was created");
        try {
            request.getRequestDispatcher("product/create.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> products = this.productService.findAllProduct();
        request.setAttribute("products", products);
        try {
            request.getRequestDispatcher("product/list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
