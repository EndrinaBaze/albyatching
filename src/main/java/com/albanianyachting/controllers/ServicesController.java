package com.albanianyachting.controllers;

import com.albanianyachting.dto.ServicesDTO;
import com.albanianyachting.dto.mapper.ServicesMapper;
import com.albanianyachting.services.ServicesService;
import com.albanianyachting.sql.Repository.ServicesRepository;
import com.albanianyachting.sql.Services;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
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

//    @GetMapping(value = {"/servicesCP"})
//    public String getServices(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
//        model.addAttribute("listServices", this.servicesService.findServices());
//        return "servicesCP";
//    }
}
