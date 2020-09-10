package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.ToursDTO;
import com.albanianyachting.sql.Tours;
import org.mapstruct.Mapper;

import java.util.List;
@Mapper(componentModel = "spring")
public interface ToursMapper {
    Tours toEntity(ToursDTO toursDTO);
    ToursDTO toDto(Tours tours);
    List<Tours> toEntities(List<ToursDTO> toursDTOS);
    List<ToursDTO> toDtos(List<Tours> toursList);
}
