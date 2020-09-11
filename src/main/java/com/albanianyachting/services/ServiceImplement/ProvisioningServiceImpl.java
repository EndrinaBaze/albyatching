package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.ProvisioningDTO;
import com.albanianyachting.dto.mapper.ProvisioningMapper;
import com.albanianyachting.services.ProvisioningService;
import com.albanianyachting.sql.Provisioning;
import com.albanianyachting.sql.Repository.ProvisioningRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class ProvisioningServiceImpl implements ProvisioningService {
    @Autowired
   private ProvisioningMapper mapper;
    @Autowired
   private ProvisioningRepository provisioningRepository;
    @Override
    public ProvisioningDTO createProvisioning(ProvisioningDTO provisioningDTO) {
        ProvisioningDTO provisioningDto = new ProvisioningDTO();
        try{
            Provisioning entity = this.mapper.toEntity(provisioningDTO);
            entity=this.provisioningRepository.saveAndFlush(entity);
            provisioningDto=this.mapper.toDto(entity);
        }catch (Exception e){
            Logger.getLogger(ProvisioningServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return null;
    }

    @Override
    public ProvisioningDTO updateProvisioning(ProvisioningDTO provisioningDTO) {
        try {
            Provisioning eprovisioning =this.provisioningRepository.findOne(provisioningDTO.getId());
            if (eprovisioning!=null){
                eprovisioning=this.mapper.toEntity(provisioningDTO);
                eprovisioning=this.provisioningRepository.saveAndFlush(eprovisioning);
                provisioningDTO=this.mapper.toDto(eprovisioning);
            }
        }catch (Exception e){
            Logger.getLogger(ProvisioningServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return provisioningDTO;
    }

    @Override
    public List<ProvisioningDTO> findProvisionings() {
        List<ProvisioningDTO> listProvisioning = new ArrayList<>();
        try {
           List<Provisioning> list=this.provisioningRepository.findAll();

        if (list!=null && !list.isEmpty()){
            for (Provisioning eProvisioning:list){
                listProvisioning.add(mapper.toDto(eProvisioning));
            }
        }
        } catch (Exception e) {
            Logger.getLogger(ProvisioningServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return listProvisioning;

    }
}
