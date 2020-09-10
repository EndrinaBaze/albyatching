package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.UsersMapper;
import com.albanianyachting.services.UsersService;
import com.albanianyachting.sql.Repository.UsersRepository;
import com.albanianyachting.sql.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;
    @Autowired
    private UsersMapper mapper;

    @Override
    public UsersDTO createUser(UsersDTO users) {
        UsersDTO usersDTO = new UsersDTO();
        try {
            Users entity = this.mapper.toEntity(users);
            entity= this.usersRepository.saveAndFlush(entity);
            usersDTO=this.mapper.toDto(entity);
        } catch (Exception e) {
            Logger.getLogger(UsersServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return usersDTO;
    }

    @Override
    public UsersDTO updateUser(UsersDTO users) {
        try {
            Users eUsers = this.usersRepository.findOne(users.getId());
            if (eUsers != null) {
                eUsers = this.mapper.toEntity(users);
                eUsers = this.usersRepository.saveAndFlush(eUsers);
                users = this.mapper.toDto(eUsers);
            }

        } catch (Exception e) {
            Logger.getLogger(UsersServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return users;
    }

    @Override
    public List<UsersDTO> findUsers() {

        List<UsersDTO> listUsersDTO = new ArrayList<>();
        try {
            List<Users> listEUsersDTO = this.usersRepository.findAll();
            if (listEUsersDTO != null && !listEUsersDTO.isEmpty()) {
                for (Users eUsers : listEUsersDTO) {
                    listUsersDTO.add(this.mapper.toDto(eUsers));
                }
            }
        } catch (Exception e) {
            Logger.getLogger(UsersServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return listUsersDTO;
    }

    @Override
    public List<UsersDTO> findUserByRole(Long role) {
        List<UsersDTO> listUsers = null;
        List<Users> listEUsers = null;

        try {
                listEUsers = this.usersRepository.findUsersByRole(role);
            if (listEUsers != null && !listEUsers.isEmpty()) {
                listUsers = new ArrayList<>();
                for (Users singO : listEUsers) {
                    listUsers.add(this.mapper.toDto(singO));
                }
            }
        } catch (Exception e) {
            Logger.getLogger(UsersServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return listUsers;
    }
}
