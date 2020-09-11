package com.albanianyachting.controllers;

import com.albanianyachting.dto.ProvisioningDTO;
import com.albanianyachting.dto.mapper.ProvisioningMapper;
import com.albanianyachting.services.ProvisioningService;
import com.albanianyachting.sql.Provisioning;
import com.albanianyachting.sql.Repository.ProvisioningRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RestController
@RequestMapping("/api")
public class ProvisioningController {
    @Autowired
    private ProvisioningMapper mapper;
    @Autowired
    private ProvisioningRepository provisioningRepository;
    @Autowired
    private ProvisioningService provisioningService;

    @PostMapping("/provisioning")
    public ProvisioningDTO createProvisioning (@RequestBody ProvisioningDTO provisioningDTO){ return this.provisioningService.createProvisioning(provisioningDTO);}

    @PutMapping("/provisioning")
    public ProvisioningDTO updateProvisioning (@RequestBody ProvisioningDTO provisioningDTO){return  this.provisioningService.updateProvisioning(provisioningDTO);}

    @GetMapping("/provisioning")
    public List<ProvisioningDTO> getProvisioning (){return this.provisioningService.findProvisionings();}

    @DeleteMapping("/provisioning/{id}")
        public ProvisioningDTO deleteProvisioning(@PathVariable Long id) {
        final Provisioning provisioning =this.provisioningRepository.findOne(id);
       if ( provisioning!=null){
           this.provisioningRepository.delete(provisioning);
       }
        return this.mapper.toDto(provisioning);
    }
}
