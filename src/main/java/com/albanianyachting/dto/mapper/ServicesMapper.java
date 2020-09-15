package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.ServicesDTO;
import com.albanianyachting.sql.Services;
import org.mapstruct.Mapper;

import java.util.List;


@Mapper(componentModel = "spring")
public interface ServicesMapper {

    Services toEntity (ServicesDTO servicesDTO);
    ServicesDTO toDto (Services services);
    List<Services> toEntities (List<ServicesDTO> servicesDTOS);
    List<ServicesDTO> toDtos (List<Services> servicesList);

}
