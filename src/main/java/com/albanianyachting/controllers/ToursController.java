package com.albanianyachting.controllers;

import com.albanianyachting.dto.ToursDTO;
import com.albanianyachting.dto.mapper.ToursMapper;
import com.albanianyachting.services.ToursService;
import com.albanianyachting.sql.Repository.ToursRepository;
import com.albanianyachting.sql.Tours;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ToursController {
    @Autowired
    private ToursRepository toursRepository;
    @Autowired
    private ToursService toursService;
    @Autowired
    private ToursMapper mapper;

    @PostMapping("/tours")
    public ToursDTO createTours (@RequestBody ToursDTO toursDTO){ return this.toursService.createTour(toursDTO);}

    @PutMapping("/tours")
    public ToursDTO updateTours(@RequestBody ToursDTO toursDTO){ return  this.toursService.updateTour(toursDTO);}

    @GetMapping("/tours")
    public List<ToursDTO> getTours(){ return this.toursService.findTours();}

    @DeleteMapping("/tours/{id}")
    public ToursDTO deleteTour(@PathVariable Long id) {
        final Tours tours = toursRepository.findOne(id);
        if (tours!=null) {
            toursRepository.delete(tours);
        }
        return mapper.toDto(tours);
    }

}

