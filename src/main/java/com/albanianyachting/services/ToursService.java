package com.albanianyachting.services;

import com.albanianyachting.dto.ToursDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ToursService {
    ToursDTO createTour (ToursDTO toursDTO);
    ToursDTO updateTour (ToursDTO toursDTO);
    List<ToursDTO> findTours();


}
