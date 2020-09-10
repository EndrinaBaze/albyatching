package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.ArrivalFormalitiesDTO;
import com.albanianyachting.sql.ArrivalFormalities;
import org.mapstruct.Mapper;
import java.util.List;

@Mapper(componentModel = "spring")
public interface ArrivalFormalitiesMapper {
    ArrivalFormalities toEntity(ArrivalFormalitiesDTO arrivalFormalitiesDTO);
    ArrivalFormalitiesDTO toDto(ArrivalFormalities arrivalFormalities);
    List<ArrivalFormalities> toEntities(List<ArrivalFormalitiesDTO> arrivalFormalitiesDTOS);
    List<ArrivalFormalitiesDTO> toDtos(List<ArrivalFormalities> arrivalFormalitiesList);
}
