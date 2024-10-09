package vn.vpgh.phoneshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
    
    @GetMapping("/admin")
    public String getDashBoard() {
        return "/admin/dashboard/show";
    }
    
}
