package com.albanianyachting.services;

import com.albanianyachting.dto.ServicesDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ServicesService {
    ServicesDTO createServices (ServicesDTO servicesDTO);
    ServicesDTO updateServices (ServicesDTO servicesDTO);
    List<ServicesDTO> findServices ();

}
