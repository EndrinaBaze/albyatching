package com.albanianyachting.services;

import com.albanianyachting.dto.ArrivalFormalitiesDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ArrivalFormalitiesService {
    ArrivalFormalitiesDTO createArrivalFormalities (ArrivalFormalitiesDTO arrivalFormalitiesDTO);
    ArrivalFormalitiesDTO updateArrivalFormalities (ArrivalFormalitiesDTO arrivalFormalitiesDTO);
    List<ArrivalFormalitiesDTO> findArrivalFormalities();
}
