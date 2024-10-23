package vn.vpgh.phoneshop.controller.admin;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.vpgh.phoneshop.domain.Product;
import vn.vpgh.phoneshop.service.ProductService;
import vn.vpgh.phoneshop.service.UploadService;

import java.util.List;

@Controller
public class ProductController {
    private final ProductService productService;
    private final UploadService uploadService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "/admin/product/show";
    }

    @GetMapping("/admin/product/{id}")
    public String getProductDetailPage(Model model, @PathVariable long id) {
        Product product = this.productService.getProductById(id);
        model.addAttribute("product", product);
        return "/admin/product/detail";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "/admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String handleCreateProduct(Model model, @ModelAttribute("newProduct") @Valid Product product,
            BindingResult newProductBindingResult, @RequestParam("productImgFile") MultipartFile file) {
        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }

        // validate
        if (newProductBindingResult.hasErrors()) {
            return "/admin/product/create";
        }

        String productImgName = this.uploadService.handleUploadFile(file, "product");
        product.setImage(productImgName);

        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getUpdateProductPage(Model model, @PathVariable long id) {
        Product currentProduct = this.productService.getProductById(id);
        model.addAttribute("currentProduct", currentProduct);
        return "/admin/product/update";
    }

    @PostMapping("/admin/product/update")
    public String handleUpdateProduct(Model model, @ModelAttribute("currentProduct") @Valid Product currentProduct,
            BindingResult currentProductBindingResult, @RequestParam("productImgFile") MultipartFile file) {
        List<FieldError> errors = currentProductBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }

        // validate
        if (currentProductBindingResult.hasErrors()) {
            return "/admin/product/update";
        }

        Product product = this.productService.getProductById(currentProduct.getId());
        if (product != null) {
            if(!file.isEmpty()){
                String newProductImgName = this.uploadService.handleUploadFile(file, "product");
                product.setImage(newProductImgName);
            }

            product.setName(currentProduct.getName());
            product.setPrice(currentProduct.getPrice());
            product.setDetailDesc(currentProduct.getDetailDesc());
            product.setShortDesc(currentProduct.getShortDesc());
            product.setQuantity(currentProduct.getQuantity());
            product.setFactory(currentProduct.getFactory());
            product.setTarget(currentProduct.getTarget());
            this.productService.handleSaveProduct(product);
        }
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeleteProductPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("newProduct", new Product());
        return "/admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String handleDelteProduct(Model model, @ModelAttribute("newProduct") Product product) {
        this.productService.deleteProductById(product.getId());
        return "redirect:/admin/product";
    }

}
