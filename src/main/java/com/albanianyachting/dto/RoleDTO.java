package com.albanianyachting.dto;

import javax.persistence.Column;
import java.io.Serializable;

public class RoleDTO implements Serializable {
    private Long id;
    private String role;

    public RoleDTO() {
    }

    public RoleDTO(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
