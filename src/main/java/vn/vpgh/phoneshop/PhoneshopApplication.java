package vn.vpgh.phoneshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class PhoneshopApplication {
    public static void main(String[] args) {
        SpringApplication.run(PhoneshopApplication.class, args);
    }
}