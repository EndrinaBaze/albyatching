package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.Provisioning;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProvisioningRepository extends JpaRepository<Provisioning, Long> {
    @Query(value = "SELECT r FROM Provisioning r WHERE r.id = :id")
    Provisioning findOne(@Param("id") Long id);
}
