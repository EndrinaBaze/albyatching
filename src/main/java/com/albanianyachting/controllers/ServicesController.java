package com.albanianyachting.controllers;

import com.albanianyachting.dto.ServicesDTO;
import com.albanianyachting.dto.mapper.ServicesMapper;
import com.albanianyachting.services.ServicesService;
import com.albanianyachting.sql.Repository.ServicesRepository;
import com.albanianyachting.sql.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ServicesController {
    @Autowired
    private ServicesRepository servicesRepository;
    @Autowired
    private ServicesMapper mapper;
    @Autowired
    private ServicesService servicesService;

    @PostMapping("/services")
    public ServicesDTO createService(@RequestBody ServicesDTO servicesDTO) {
        return servicesService.createServices(servicesDTO); }

    @PutMapping ("/services")
    public ServicesDTO updateService(@RequestBody ServicesDTO servicesDTO) { return servicesService.updateServices(servicesDTO); }

    @GetMapping ("/services")
    public List<ServicesDTO> getService() { return servicesService.findServices(); }

    @DeleteMapping("/services/{id}")
    public ServicesDTO deleteServices (@PathVariable  Long id){
        final Services services =this.servicesRepository.findOne(id);
        if (services!=null){
            this.servicesRepository.delete(services);
        }
        return this.mapper.toDto(services);
    }
}
