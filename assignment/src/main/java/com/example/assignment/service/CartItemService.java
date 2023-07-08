//package com.example.assignment.service;
//
//import com.example.assignment.entity.CartItem;
//import com.example.assignment.repository.CartItemRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.Optional;
//
//@Service
//public class CartItemService {
//    @Autowired
//    private CartItemRepository cartItemRepository;
//    public void addProductToCart(CartItem cartItem) {
//        CartItem existingCartItem = cartItemRepository.findById(cartItem.getProduct().getId());
//        if (existingCartItem != null) {
//            existingCartItem.setQuantity(existingCartItem.getQuantity() + cartItem.getQuantity());
//            cartItemRepository.save(existingCartItem);
//        } else {
//            cartItemRepository.save(cartItem);
//        }
//    }
//}
