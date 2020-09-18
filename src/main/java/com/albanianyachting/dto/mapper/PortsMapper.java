package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.PortsDTO;
import com.albanianyachting.sql.Ports;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface PortsMapper {
    PortsDTO toDTO (Ports ports);
    Ports  toEntity(PortsDTO portsDTO);
    List<PortsDTO> toDTOS (List<Ports> portsList);
    List<Ports>  toEntities(List<PortsDTO> portsDTOList);
}
