package com.albanianyachting.controllers;

import com.albanianyachting.dto.BookTourDTO;
import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.BookTourMapper;
import com.albanianyachting.services.BookTourService;
import com.albanianyachting.sql.BookTour;
import com.albanianyachting.sql.Repository.BookTourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api")
public class BookTourController {
    @Autowired
    private BookTourMapper mapper;
    @Autowired
    private BookTourRepository bookTourRepository;
    @Autowired
    private BookTourService bookTourService;

    @PostMapping("/bookTour")
    public BookTourDTO createBookTour (@RequestBody BookTourDTO bookTourDTO){ return  this.bookTourService.createBookTour(bookTourDTO);}

    @PutMapping("/bookTour")
    public BookTourDTO updateBookTour (@RequestBody BookTourDTO bookTourDTO){ return  this.bookTourService.updateBookTour(bookTourDTO);}

    @GetMapping("/bookTour")
    public List<BookTourDTO> getBookTour(){return this.bookTourService.findBookTour();}

    @GetMapping("/bookTour/byUsers/{users}")
    public List<BookTourDTO> getBookToursByUsers(@PathVariable Long users) {
        return bookTourService.findBookTourByUsers(users);
    }

    @GetMapping("/bookTour/byTours/{tours}")
    public List<BookTourDTO> getBookToursByTours(@PathVariable Long tours) {
        return bookTourService.findBookTourByTours(tours);
    }

    @DeleteMapping("/bookTour/{id}")
    public BookTourDTO deleteBookTour(@PathVariable Long id){
        final BookTour bookTour =this.bookTourRepository.findOne(id);
        if(bookTour!=null){
            this.bookTourRepository.delete(bookTour);
        }
        return this.mapper.toDto(bookTour);
    }
}
