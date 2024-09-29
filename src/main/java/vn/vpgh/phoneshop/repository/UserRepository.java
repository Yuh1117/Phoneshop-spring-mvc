package vn.vpgh.phoneshop.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vn.vpgh.phoneshop.domain.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User save(User user);
}
