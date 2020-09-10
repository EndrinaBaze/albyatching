package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.ArrivalFormalities;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ArrivalFormalitiesRepository extends JpaRepository<ArrivalFormalities, Long> {
    @Query(value = "SELECT r FROM ArrivalFormalities r WHERE r.id = :id")
    ArrivalFormalities findOne(@Param("id") Long id);
}
