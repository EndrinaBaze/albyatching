package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.BookTour;
import com.albanianyachting.sql.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookTourRepository extends JpaRepository<BookTour, Long> {
    @Query(value = "SELECT r FROM BookTour r WHERE r.id = :id")
    BookTour findOne(@Param("id") Long id);

//    @Query(value = "SELECT u FROM BookTour u WHERE u.agents = :users")
//    List<BookTour> findBookToursByUsers(@Param("users") Long users);
//
//    @Query(value = "SELECT u FROM BookTour u WHERE u.tours = :tours")
//    List<BookTour> findBookToursByTours(@Param("tours") Long tours);
}
