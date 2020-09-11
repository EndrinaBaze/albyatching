package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.ArrivalFormalitiesDTO;
import com.albanianyachting.dto.mapper.ArrivalFormalitiesMapper;
import com.albanianyachting.services.ArrivalFormalitiesService;
import com.albanianyachting.sql.ArrivalFormalities;
import com.albanianyachting.sql.Repository.ArrivalFormalitiesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class ArrivalFormalitiesServiceImpl implements ArrivalFormalitiesService {
    @Autowired
    private ArrivalFormalitiesMapper mapper;
    @Autowired
    private ArrivalFormalitiesRepository arrivalFormalitiesRepository;
    @Override
    public ArrivalFormalitiesDTO createArrivalFormalities(ArrivalFormalitiesDTO arrivalFormalitiesDTO) {
        ArrivalFormalitiesDTO formalitiesDTO =new ArrivalFormalitiesDTO();
        try {
        ArrivalFormalities entity =this.mapper.toEntity(arrivalFormalitiesDTO);
        entity=this.arrivalFormalitiesRepository.saveAndFlush(entity);
        formalitiesDTO=this.mapper.toDto(entity);
       }catch (Exception e){
           Logger.getLogger(ArrivalFormalitiesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
       }
        return formalitiesDTO;
    }

    @Override
    public ArrivalFormalitiesDTO updateArrivalFormalities(ArrivalFormalitiesDTO arrivalFormalitiesDTO) {
        try {
           ArrivalFormalities arrivalFormalities =this.arrivalFormalitiesRepository.findOne(arrivalFormalitiesDTO.getId());
           if (arrivalFormalities!=null){
               arrivalFormalities=this.mapper.toEntity(arrivalFormalitiesDTO);
               arrivalFormalities=this.arrivalFormalitiesRepository.saveAndFlush(arrivalFormalities);
               arrivalFormalitiesDTO=this.mapper.toDto(arrivalFormalities);

           }
        }catch (Exception e){
            Logger.getLogger(ArrivalFormalitiesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return arrivalFormalitiesDTO;
    }

    @Override
    public List<ArrivalFormalitiesDTO> findArrivalFormalities() {
        List<ArrivalFormalitiesDTO> arrivalFormalitiesDTOList =new ArrayList<>();
        try {
            List<ArrivalFormalities> arrivalFormalitiesList =this.arrivalFormalitiesRepository.findAll();
            if (arrivalFormalitiesList!=null && !arrivalFormalitiesList.isEmpty()){
                for (ArrivalFormalities arrivalFormalities: arrivalFormalitiesList){
                 arrivalFormalitiesDTOList.add(mapper.toDto(arrivalFormalities));
                }
            }
        }catch (Exception e){
            Logger.getLogger(ArrivalFormalitiesServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return arrivalFormalitiesDTOList;
    }
}
