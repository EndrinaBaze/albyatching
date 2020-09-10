package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.BookTour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BookTourRepository extends JpaRepository<BookTour, Long> {
    @Query(value = "SELECT r FROM BookTour r WHERE r.id = :id")
    BookTour findOne(@Param("id") Long id);
}
