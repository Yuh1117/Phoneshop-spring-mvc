package vn.vpgh.phoneshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import vn.vpgh.phoneshop.domain.Product;


@Controller
public class ProductController {

    @GetMapping("/admin/product")
    public String getProductPage() {
        return "/admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "/admin/product/create";
    }
    
}
