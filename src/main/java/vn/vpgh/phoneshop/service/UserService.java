package vn.vpgh.phoneshop.service;

import org.springframework.stereotype.Service;

import vn.vpgh.phoneshop.domain.Role;
import vn.vpgh.phoneshop.domain.User;
import vn.vpgh.phoneshop.domain.dto.RegisterDTO;
import vn.vpgh.phoneshop.repository.RoleRepository;
import vn.vpgh.phoneshop.repository.UserRepository;
import java.util.List;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User registerDTOtoUser(RegisterDTO registerUser) {
        User user = new User();
        user.setFullName(registerUser.getLastName() + " " + registerUser.getFirstName());
        user.setEmail(registerUser.getEmail());
        user.setPassword(registerUser.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email){
        return this.userRepository.existsByEmail(email);
    }
}
