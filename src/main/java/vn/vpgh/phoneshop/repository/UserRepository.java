package vn.vpgh.phoneshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.vpgh.phoneshop.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User user);

    List<User> findAll();

    List<User> findByEmail(String email);

    User findById(long id);

    void deleteById(long id);

    boolean existsByEmail(String email);
}
