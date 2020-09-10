package com.albanianyachting.services;

import com.albanianyachting.dto.RoleDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RoleService {
    RoleDTO createRole (RoleDTO roleDTO);
    RoleDTO updateRole (RoleDTO roleDTO);
    List<RoleDTO> findRoles();
}
