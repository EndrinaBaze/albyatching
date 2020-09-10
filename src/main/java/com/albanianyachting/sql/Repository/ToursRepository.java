package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.Tours;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ToursRepository extends JpaRepository<Tours, Long> {
    @Query(value = "SELECT r FROM Tours r WHERE r.id = :id")
    Tours findOne(@Param("id") Long id);
}
