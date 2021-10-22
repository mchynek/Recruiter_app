package com.app.recruiter.dao;

import com.app.recruiter.entity.User;
import com.app.recruiter.repository.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.Optional;

@Repository
@Transactional
public class UserDao {
    private final UserRepository userRepository;

    @PersistenceContext
    private EntityManager entityManager;

    public UserDao(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, org.mindrot.jbcrypt.BCrypt.gensalt());
    }
    public User findById(long id) {
        return entityManager.find(User.class, id);
    }

    public User login(String email, String password){
        User userByEmail = userRepository.findByEmail(email);
        if(userByEmail.getEmail().equals(email)&&BCrypt.checkpw(password, userByEmail.getPassword())){
            return userByEmail;
      }
//        if(userByEmail.getEmail().equals(email)&&password.equals(userByEmail.getPassword())){
//            return userByEmail;
//        }
       return null;
    }

    public void create(User user){
            entityManager.persist(user);

    }


}
