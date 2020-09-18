package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.PortsDTO;
import com.albanianyachting.dto.mapper.PortsMapper;
import com.albanianyachting.services.PortsService;
import com.albanianyachting.sql.Ports;
import com.albanianyachting.sql.Repository.PortsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class PortsServiceImpl implements PortsService {
    @Autowired
    private PortsRepository portsRepository;
    @Autowired
    private PortsMapper mapper;

    @Override
    public PortsDTO createPorts(PortsDTO portsDTO) {
        PortsDTO portsDto= new PortsDTO();
        try {
            Ports entity =this.mapper.toEntity(portsDTO);
            entity=this.portsRepository.saveAndFlush(entity);
            portsDto=this.mapper.toDTO(entity);

        }catch (Exception e){
            Logger.getLogger(PortsServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return portsDto;
    }

    @Override
    public PortsDTO updatePorts(PortsDTO portsDTO) {
        try {
            Ports eports= this.portsRepository.findOne(portsDTO.getId());
            if(eports!=null){
               eports =this.mapper.toEntity(portsDTO);
               eports=this.portsRepository.saveAndFlush(eports);
               portsDTO=this.mapper.toDTO(eports);
            }
        }catch (Exception e){
            Logger.getLogger(PortsServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return portsDTO;
    }

    @Override
    public List<PortsDTO> findPorts() {
        List<PortsDTO> portsDTOList =new ArrayList<>();
        try {
            List<Ports> portsList =this.portsRepository.findAll();
            if (portsList!=null && !portsList.isEmpty()){
                for (Ports eport: portsList){
                   portsDTOList.add(mapper.toDTO(eport));
                }
            }

        }
        catch (Exception e){
            Logger.getLogger(PortsServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return portsDTOList;
    }

    @Override
    public List<PortsDTO> findPortsByService(Long service) {
        List<PortsDTO> portsDTOList =null;
        List<Ports> portsList =null;
     try {
        portsList= this.portsRepository.findPortsByService(service);
         if (portsList!=null && !portsList.isEmpty()){
             portsDTOList =new ArrayList<>();
             for (Ports eport: portsList){
                 portsDTOList.add(mapper.toDTO(eport));
             }
         }

     } catch (Exception e){
         Logger.getLogger(PortsServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
     }
        return portsDTOList;
    }
}
