package com.albanianyachting.controllers;

import com.albanianyachting.dto.RoleDTO;
import com.albanianyachting.dto.mapper.RoleMapper;
import com.albanianyachting.services.RoleService;
import com.albanianyachting.sql.Repository.RoleRepository;
import com.albanianyachting.sql.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class RoleController {
    @Autowired
    private RoleMapper mapper;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleService roleService;

    @PostMapping("/role")
    public RoleDTO createRole(@RequestBody RoleDTO roleDTO) { return roleService.createRole(roleDTO); }

    @PutMapping("/role")
    public RoleDTO updateRole(@RequestBody RoleDTO roleDTO) {
        return roleService.updateRole(roleDTO);
    }

    @GetMapping("/role")
    public List<RoleDTO> getRole() {
        return roleService.findRoles();
    }

    @DeleteMapping("/role/{id}")
    public RoleDTO deleteRole(@PathVariable Long id) {
        final Role role = roleRepository.findOne(id);
        if (role!=null) {
            roleRepository.delete(role);
        }
        return mapper.toDto(role);
    }
}
