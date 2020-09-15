package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.ServicesDTO;
import com.albanianyachting.dto.mapper.ServicesMapper;
import com.albanianyachting.services.ServicesService;
import com.albanianyachting.sql.Repository.ServicesRepository;
import com.albanianyachting.sql.Services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class ServicesServiceImpl implements ServicesService {
    @Autowired
    private ServicesRepository servicesRepository;
    @Autowired
    private ServicesMapper mapper;
    @Override
    public ServicesDTO createServices(ServicesDTO servicesDTO) {
        ServicesDTO servicesDto =new ServicesDTO();
        try {
            Services entity=this.mapper.toEntity(servicesDTO);
            entity=this.servicesRepository.saveAndFlush(entity);
            servicesDto=this.mapper.toDto(entity);
        }catch (Exception e){
            Logger.getLogger(ServicesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return servicesDto;
    }

    @Override
    public ServicesDTO updateServices(ServicesDTO servicesDTO) {
        try {

            Services eservices=this.servicesRepository.findOne(servicesDTO.getId());
            if (eservices!=null){
                eservices=this.mapper.toEntity(servicesDTO);
                eservices=this.servicesRepository.saveAndFlush(eservices);
                servicesDTO=this.mapper.toDto(eservices);
            }
        }catch (Exception e){
            Logger.getLogger(ServicesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return servicesDTO;
    }

    @Override
    public List<ServicesDTO> findServices() {
        List<ServicesDTO> servicesDTOList =new ArrayList<>();
        try {
            List<Services> servicesList=this.servicesRepository.findAll();
            if (servicesList!=null && !servicesList.isEmpty()){
                for (Services services: servicesList){
                    servicesDTOList.add(mapper.toDto(services));
                }
            }
        }catch (Exception e){
            Logger.getLogger(ServicesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return servicesDTOList;
    }
}
