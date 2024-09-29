package vn.vpgh.phoneshop.service;

import org.springframework.stereotype.Service;
import vn.vpgh.phoneshop.domain.User;
import vn.vpgh.phoneshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User handleSaveUser(User user) {
        return this.userRepository.save(user);
    }
}
