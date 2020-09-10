package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.ProvisioningDTO;
import com.albanianyachting.sql.Provisioning;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface ProvisioningMapper {
    Provisioning toEntity(ProvisioningDTO provisioningDTO);
    ProvisioningDTO toDto(Provisioning provisioning);
    List<Provisioning> toEntities(List<ProvisioningDTO> provisioningDTOS);
    List<ProvisioningDTO> toDtos(List<Provisioning> provisioningList);
}
