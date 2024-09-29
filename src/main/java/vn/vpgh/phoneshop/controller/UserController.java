package vn.vpgh.phoneshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.vpgh.phoneshop.domain.User;
import vn.vpgh.phoneshop.repository.UserRepository;
import vn.vpgh.phoneshop.service.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String homePage(Model model) {
        return "index";
    }

    @RequestMapping("/admin/user")
    public String createUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/test", method = RequestMethod.POST)
    public String testPage(Model model, @ModelAttribute("newUser") User user) {
        this.userService.handleSaveUser(user);
        return "/admin/user/test";
    }
}

