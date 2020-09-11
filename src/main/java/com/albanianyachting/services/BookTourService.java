package com.albanianyachting.services;

import com.albanianyachting.dto.BookTourDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookTourService {
    BookTourDTO createBookTour (BookTourDTO bookTourDTO);
    BookTourDTO updateBookTour (BookTourDTO bookTourDTO);
    List<BookTourDTO> findBookTour();
}
