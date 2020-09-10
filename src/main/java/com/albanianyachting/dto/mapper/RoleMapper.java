package com.albanianyachting.dto.mapper;
import com.albanianyachting.dto.RoleDTO;
import com.albanianyachting.sql.Role;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
    public interface RoleMapper {
        Role toEntity(RoleDTO roleDTO);
        RoleDTO toDto(Role role);
        List<Role> toEntities(List<RoleDTO> roleDTOS);
        List<RoleDTO> toDtos(List<Role> roleList);

    }
