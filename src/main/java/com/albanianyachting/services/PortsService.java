package com.albanianyachting.services;

import com.albanianyachting.dto.PortsDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PortsService {
    PortsDTO createPorts (PortsDTO portsDTO);
    PortsDTO updatePorts (PortsDTO portsDTO);
    List<PortsDTO> findPorts ();
    List<PortsDTO> findPortsByService (Long service);

}
