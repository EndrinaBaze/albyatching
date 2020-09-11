package com.albanianyachting.controllers;

import com.albanianyachting.dto.ArrivalFormalitiesDTO;
import com.albanianyachting.dto.mapper.ArrivalFormalitiesMapper;
import com.albanianyachting.services.ArrivalFormalitiesService;
import com.albanianyachting.sql.ArrivalFormalities;
import com.albanianyachting.sql.Repository.ArrivalFormalitiesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ArrivalFormalitiesController {
    @Autowired
    private ArrivalFormalitiesRepository arrivalFormalitiesRepository;
    @Autowired
    private ArrivalFormalitiesService arrivalFormalitiesService;
    @Autowired
    private ArrivalFormalitiesMapper mapper;

    @PostMapping("/arrivalFormalities")
    public ArrivalFormalitiesDTO createArrivalFormalities (@RequestBody ArrivalFormalitiesDTO arrivalFormalitiesDTO){return this.arrivalFormalitiesService.createArrivalFormalities(arrivalFormalitiesDTO);}

    @PutMapping("/arrivalFormalities")
    public ArrivalFormalitiesDTO updateArrivalFormalities (@RequestBody ArrivalFormalitiesDTO arrivalFormalitiesDTO){return this.arrivalFormalitiesService.updateArrivalFormalities(arrivalFormalitiesDTO);}

    @GetMapping("/arrivalFormalities")
    public List<ArrivalFormalitiesDTO> getArrivalFormalities(){ return this.arrivalFormalitiesService.findArrivalFormalities();}

    @DeleteMapping("/arrivalFormalities/{id}")
    public ArrivalFormalitiesDTO deleteArrivalFormalities (@PathVariable Long id){
        final ArrivalFormalities arrivalFormalities=this.arrivalFormalitiesRepository.findOne(id);
        if (arrivalFormalities!=null){
         this.arrivalFormalitiesRepository.delete(arrivalFormalities);
        }
        return this.mapper.toDto(arrivalFormalities);
    }
}
