package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.ToursDTO;
import com.albanianyachting.dto.mapper.ToursMapper;
import com.albanianyachting.services.ToursService;
import com.albanianyachting.sql.Repository.ToursRepository;
import com.albanianyachting.sql.Tours;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class ToursServiceImpl implements ToursService {
    @Autowired
    private ToursMapper mapper;
    @Autowired
    private ToursRepository toursRepository;

    @Override
    public ToursDTO createTour(ToursDTO toursDTO) {
        ToursDTO tourDTO =new ToursDTO();
        try{
            Tours entity = this.mapper.toEntity(toursDTO);
            entity=this.toursRepository.saveAndFlush(entity);
            tourDTO=this.mapper.toDto(entity);
        }catch (Exception e) {
            Logger.getLogger(ToursServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return tourDTO;
    }

    @Override
    public ToursDTO updateTour(ToursDTO toursDTO) {
        try {
            Tours etours= this.toursRepository.findOne(toursDTO.getId());
            if(etours!=null){
                etours=this.mapper.toEntity(toursDTO);
                etours=this.toursRepository.saveAndFlush(etours);
                toursDTO=this.mapper.toDto(etours);

            }

        }
        catch (Exception e) {
            Logger.getLogger(ToursServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return toursDTO;
    }

    @Override
    public List<ToursDTO> findTours() {
        List<ToursDTO> listTours = new ArrayList<>();
        try {
            List<Tours> toursList =this.toursRepository.findAll();
            if (toursList!=null && !toursList.isEmpty()){
                for (Tours eTours : toursList){
                    listTours.add(this.mapper.toDto(eTours));
                }
            }

        }catch (Exception e) {
            Logger.getLogger(ToursServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);

        }
        return listTours;
    }
}
