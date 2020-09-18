package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.BookTour;
import com.albanianyachting.sql.Ports;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PortsRepository extends JpaRepository<Ports, Long> {
    @Query(value = "SELECT p FROM Ports p WHERE p.id = :id")
    Ports findOne(@Param("id") Long id);

    @Query(value = "SELECT p FROM Ports p WHERE p.services = :services")
    List<Ports> findPortsByService(@Param("services") Long services);

}
