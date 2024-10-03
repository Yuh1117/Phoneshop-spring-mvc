package vn.vpgh.phoneshop.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.vpgh.phoneshop.domain.User;
import vn.vpgh.phoneshop.repository.UserRepository;
import vn.vpgh.phoneshop.service.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService, UserRepository userRepository) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String gethomePage(Model model) {
        List<User> arrUsers = this.userService.getAllUsersByEmail("test@example.us");
        for (User user : arrUsers) {
            System.out.println(user);
        }
        return "index";
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        return "/admin/user/table-user";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "/admin/user/user-detail";
    }

    @RequestMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "/admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String handleCreateUserPage(Model model, @ModelAttribute("newUser") User user) {
        this.userService.handleSaveUser(user);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("currentUser", currentUser);
        return "/admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String handleUpdateUser(Model model, @ModelAttribute("currentUser") User currentUser) {
        User user = this.userService.getUserById(currentUser.getId());
        if (user != null) {
            user.setFullName(currentUser.getFullName());
            user.setPhone(currentUser.getPhone());
            user.setAddress(currentUser.getAddress());
            this.userService.handleSaveUser(user);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable long id) {
        model.addAttribute("id", id);
        model.addAttribute("newUser", new User());
        return "/admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String handleDelteUser(Model model, @ModelAttribute("newUser") User user) {
        this.userService.deleteUserById(user.getId());
        return "redirect:/admin/user";
    }

}
