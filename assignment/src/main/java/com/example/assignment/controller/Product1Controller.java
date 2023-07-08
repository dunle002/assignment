package com.example.assignment.controller;
import com.example.assignment.entity.Product;
import com.example.assignment.repository.ProductRepository;
import com.example.assignment.service.ProductService;
import jakarta.servlet.ServletContext;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

@Controller

public class Product1Controller {

    @Autowired
    private ProductService productService;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    ServletContext context;
   @GetMapping("hien-thi")
   public String hienThi(@RequestParam(name = "page",defaultValue = "0")Integer number,Model model){
       Pageable pageable = PageRequest.of(number,5);
       Page<Product> listProduct = productRepository.findAll(pageable);
       model.addAttribute("listProduct",listProduct);
       return "detail";
   }
    @GetMapping("detail/{id}")
    public String productDetail(@PathVariable("id") Integer id, Model model) {
        Product product = productService.getProductById(id);
        model.addAttribute("product", product);
        return "product-detail";
    }
    @GetMapping("view-add")
    public String viewAdd(Model model){
        model.addAttribute("product",productRepository.findAll());
        return "product-add";
    }
    @PostMapping("add-product")
    public String addProduct(Model model,@RequestParam("nameproduct")String nameProduct,
                             @RequestParam("imagePath") MultipartFile imagePath,
                             @RequestParam("price")String price,
                             @RequestParam("title")String title){
        String uploadRootPath = context.getRealPath("upload");
        File uploadRootDir = new File(uploadRootPath);
        if (uploadRootDir.exists()){
            uploadRootDir.mkdir();
        }try {
            String filename = imagePath.getOriginalFilename();
            File serverFile = new File(uploadRootDir.getAbsoluteFile() + File.separator + filename);
            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
            stream.write(imagePath.getBytes());
            stream.close();
            model.addAttribute("name", filename);
            model.addAttribute("size", imagePath.getSize());
            model.addAttribute("type", imagePath.getContentType());
        }catch (Exception e) {

        }
        Product product = Product.builder()
                .nameproduct(nameProduct)
                .imagePath(String.valueOf(imagePath))
                .price(Double.valueOf(price))
                .title(title)
                .build();
        productRepository.save(product);
        return "redirect:/hien-thi";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id")String id){
       productRepository.deleteById(Integer.valueOf(id));
       return "redirect:/hien-thi";
    }
//    @GetMapping("view-update/{id}")
//    public String viewUpdate(Model model,@PathVariable("id")String id){
//       Product product = productRepository.findById(Integer.valueOf(id)).orElse(null);
//       model.addAttribute("product", product);
//       return "product-update";
//    }
//    @PostMapping("update")
//    public String update(Model model,
//                         @RequestParam("nameproduct") String nameproduct,
//                         @RequestParam("imagePath")String imagePath,
//                         @RequestParam("price")String price,
//                         @RequestParam("title")String title,
//                         @RequestParam("description")String description,
//                         @RequestParam("id")String id){
//       Product product = Product.builder()
//               .nameproduct(nameproduct)
//               .imagePath(imagePath)
//               .price(Double.valueOf(price))
//               .title(title)
//               .description(description)
//               .build();
//       Product findProduct = productRepository.findById(Integer.valueOf(id)).orElse(null);
//       product.setId(findProduct.getId());
//        BeanUtils.copyProperties(product,findProduct);
//        productRepository.save(product);
//        return "redirect:/hien-thi";
//    }

}
