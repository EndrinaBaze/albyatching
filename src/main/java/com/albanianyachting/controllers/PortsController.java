package com.albanianyachting.controllers;

import com.albanianyachting.dto.PortsDTO;
import com.albanianyachting.dto.mapper.PortsMapper;
import com.albanianyachting.services.PortsService;
import com.albanianyachting.sql.Ports;
import com.albanianyachting.sql.Repository.PortsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api")
public class PortsController {
    @Autowired
    private PortsRepository portsRepository;
    @Autowired
    private PortsMapper mapper;
    @Autowired
    private PortsService portsService;

    @PostMapping("/ports")
    public PortsDTO createPorts(@RequestBody PortsDTO portsDTO){
        return portsService.createPorts(portsDTO);
    }

    @PutMapping("/ports")
    public PortsDTO updatePorts(@RequestBody PortsDTO portsDTO){
        return portsService.updatePorts(portsDTO);
    }

    @GetMapping("/ports")
    public List<PortsDTO> getPorts (){
        return portsService.findPorts();
    }
    @GetMapping("/ports/{services}")
    public List<PortsDTO> getPortsByServices (@PathVariable Long services){
        return portsService.findPortsByService(services);
    }

    @DeleteMapping ("/ports/{id}")
    public PortsDTO deletePorts (@PathVariable Long id){
        final Ports ports = this.portsRepository.findOne(id);
        if(ports!=null){
         this.portsRepository.delete(ports);
        }
        return this.mapper.toDTO(ports);
    }
}
