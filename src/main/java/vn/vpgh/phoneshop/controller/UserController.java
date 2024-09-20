package vn.vpgh.phoneshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.vpgh.phoneshop.domain.User;
import vn.vpgh.phoneshop.service.UserService;

@Controller
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin/user")
    public String createUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/test", method = RequestMethod.POST)
    public String testPage(Model model, @ModelAttribute("newUser") User user1) {
        System.out.println(user1);
        return "test";
    }
}

