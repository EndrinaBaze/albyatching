package com.albanianyachting.dto;
import java.io.Serializable;

public class PortsDTO implements Serializable {
    private Long id;
    private String name;
    private String description;
    private ServicesDTO services;

    public PortsDTO() {
    }
    public PortsDTO(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ServicesDTO getServices() {
        return services;
    }

    public void setServices(ServicesDTO services) {
        this.services = services;
    }
}
