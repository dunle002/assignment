package com.example.assignment.service;

import com.example.assignment.entity.Product;
import com.example.assignment.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;
    public Page<Product> findPaginated(int pageNo,int pageSize){
        Pageable pageable = PageRequest.of(pageNo -1, pageSize);
        return productRepository.findAll(pageable);
    }
    public Product getProductById(Integer id) {
        return productRepository.findById(id).orElse(null);
    }
}
