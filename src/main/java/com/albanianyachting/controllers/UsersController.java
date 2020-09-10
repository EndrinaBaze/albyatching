package com.albanianyachting.controllers;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.UsersMapper;
import com.albanianyachting.services.UsersService;
import com.albanianyachting.sql.Repository.UsersRepository;
import com.albanianyachting.sql.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class UsersController {
    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private UsersMapper mapper;
    @Autowired
    private UsersService usersService;

    @PostMapping("/users")
    public UsersDTO createUser(@RequestBody UsersDTO usersDTO) {
        return usersService.createUser(usersDTO);
    }

    @PutMapping("/users")
    public UsersDTO updateUser(@RequestBody UsersDTO usersDTO) {
        return usersService.updateUser(usersDTO);
    }

    @GetMapping("/users")
    public List<UsersDTO> getUsers() {
        return usersService.findUsers();
    }

    @GetMapping("/users/byRole/{role}")
    public List<UsersDTO> getUsersByRole(@PathVariable Long role) {

        return usersService.findUserByRole(role);
    }

    @DeleteMapping("/users/{id}")
    public UsersDTO deleteUsers(@PathVariable Long id) {
        final Users users = usersRepository.findOne(id);
        if (users!=null) {
            usersRepository.delete(users);
        }
        return mapper.toDto(users);
    }

}
