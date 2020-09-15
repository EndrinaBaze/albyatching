package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.Services;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ServicesRepository extends JpaRepository<Services, Long> {
    @Query(value = "SELECT s FROM Services s WHERE s.id = :id")
    Services findOne(@Param("id") Long id);
}
