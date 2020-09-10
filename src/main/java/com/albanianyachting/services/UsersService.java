package com.albanianyachting.services;

import com.albanianyachting.dto.UsersDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UsersService {
    UsersDTO createUser (UsersDTO users);
    UsersDTO updateUser (UsersDTO users);
    List<UsersDTO> findUsers();
    List<UsersDTO> findUserByRole (Long role);

}
