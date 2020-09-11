package com.albanianyachting.services;

import com.albanianyachting.dto.ProvisioningDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProvisioningService {
    ProvisioningDTO createProvisioning (ProvisioningDTO provisioningDTO);
    ProvisioningDTO updateProvisioning (ProvisioningDTO provisioningDTO);
    List<ProvisioningDTO> findProvisionings();
}
