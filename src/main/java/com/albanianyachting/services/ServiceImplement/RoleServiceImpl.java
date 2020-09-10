package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.RoleDTO;
import com.albanianyachting.dto.mapper.RoleMapper;
import com.albanianyachting.services.RoleService;
import com.albanianyachting.sql.Repository.RoleRepository;
import com.albanianyachting.sql.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private RoleMapper mapper;

    @Override
    public RoleDTO createRole(RoleDTO roleDTO) {
        RoleDTO rolesDTO = new RoleDTO();
        try {
                Role entity = mapper.toEntity(roleDTO);
                entity= this.roleRepository.saveAndFlush(entity);
                rolesDTO=this.mapper.toDto(entity);
        } catch (Exception e) {
            Logger.getLogger(RoleServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return rolesDTO;
    }

    @Override
    public RoleDTO updateRole(RoleDTO roleDTO) {
        try {
            Role eRole = this.roleRepository.findOne(roleDTO.getId());
            if (eRole != null) {
                eRole = this.mapper.toEntity(roleDTO);
                eRole = this.roleRepository.saveAndFlush(eRole);
                roleDTO = this.mapper.toDto(eRole);
            }
        } catch (Exception e) {
            Logger.getLogger(RoleServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return roleDTO;
    }

    @Override
    public List<RoleDTO> findRoles() {
        List<RoleDTO> listRoleDTO = new ArrayList<>();
        try {
            List<Role> listERoleDTO = this.roleRepository.findAll();
            if (listERoleDTO != null && !listERoleDTO.isEmpty()) {
                for (Role eRole : listERoleDTO) {
                    listRoleDTO.add(this.mapper.toDto(eRole));
                }
            }
        } catch (Exception e) {
            Logger.getLogger(RoleServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return listRoleDTO;
    }
}
