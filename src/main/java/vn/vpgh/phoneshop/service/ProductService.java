package vn.vpgh.phoneshop.service;

import org.springframework.stereotype.Controller;
import vn.vpgh.phoneshop.domain.Product;
import vn.vpgh.phoneshop.repository.ProductRepository;

import java.util.List;

@Controller
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product handleSaveProduct(Product product) {
        return this.productRepository.save(product);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public Product getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProductById(long id) {
        this.productRepository.deleteById(id);
    }

}
