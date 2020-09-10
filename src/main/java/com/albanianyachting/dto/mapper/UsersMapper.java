package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.sql.Users;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring",uses = {RoleMapper.class})
public interface UsersMapper {
    Users toEntity(UsersDTO usersDTO);
    UsersDTO toDto(Users users);
    List<Users> toEntities(List<UsersDTO> usersDTOs);
    List<UsersDTO> toDtos(List<Users> usersList);

}