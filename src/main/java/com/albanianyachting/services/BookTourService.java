package com.albanianyachting.services;

import com.albanianyachting.dto.BookTourDTO;
import com.albanianyachting.dto.UsersDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookTourService {
    BookTourDTO createBookTour (BookTourDTO bookTourDTO);
    BookTourDTO updateBookTour (BookTourDTO bookTourDTO);
    List<BookTourDTO> findBookTour();
    List<BookTourDTO> findBookTourByUsers (Long users);
    List<BookTourDTO> findBookTourByTours (Long tours);

}
