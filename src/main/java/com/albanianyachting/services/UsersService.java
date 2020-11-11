package com.albanianyachting.services;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.sql.Users;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Service
public interface UsersService {
    String signin(String username, String password);

    String signup(Users user);

    Users createUserFromAdmin(Users user);

    Users updateUserFromAdmin(Users user);

    void delete(String username);

    void deleteById(Long id);

    Users search(String username);

    Users whoami(HttpServletRequest req);

    String refresh(String username);

    List<Users> findUsers();
}
