package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.BookTourDTO;
import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.BookTourMapper;
import com.albanianyachting.services.BookTourService;
import com.albanianyachting.sql.BookTour;
import com.albanianyachting.sql.Repository.BookTourRepository;
import com.albanianyachting.sql.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class BookTourServiceImpl implements BookTourService {
    @Autowired
    private BookTourMapper mapper;
    @Autowired
    private BookTourRepository bookTourRepository;
    @Override
    public BookTourDTO createBookTour(BookTourDTO bookTourDTO) {
        BookTourDTO bookTourDto =new BookTourDTO();
        try {
            BookTour entity= this.mapper.toEntity(bookTourDTO);
            entity=this.bookTourRepository.saveAndFlush(entity);
            bookTourDto=this.mapper.toDto(entity);
        }catch (Exception e){
            Logger.getLogger(BookTourServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return null;
    }

    @Override
    public BookTourDTO updateBookTour(BookTourDTO bookTourDTO) {
        try {
BookTour ebookTour=this.bookTourRepository.findOne(bookTourDTO.getId());
if (ebookTour!=null){
    ebookTour=this.mapper.toEntity(bookTourDTO);
    ebookTour=this.bookTourRepository.saveAndFlush(ebookTour);
    bookTourDTO=this.mapper.toDto(ebookTour);
}
        }catch (Exception e){
            Logger.getLogger(BookTourServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bookTourDTO;
    }

    @Override
    public List<BookTourDTO> findBookTour() {
        List<BookTourDTO> bookTourDTOList =new ArrayList<>();
        try {
            List<BookTour> bookTourList=this.bookTourRepository.findAll();
            if (bookTourList!=null && !bookTourList.isEmpty()){
                for (BookTour ebook: bookTourList){
                    bookTourDTOList.add(mapper.toDto(ebook));

                }
            }
        }catch (Exception e){
            Logger.getLogger(BookTourServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bookTourDTOList;
    }

    @Override
    public List<BookTourDTO> findBookTourByUsers(Long users) {
        List<BookTourDTO> bookTourDTOList = null;
        List<BookTour> bookTourList = null;
        try {
            bookTourList = this.bookTourRepository.findBookToursByUsers(users);
            if (bookTourList != null && !bookTourList.isEmpty()) {
                bookTourDTOList = new ArrayList<>();
                for (BookTour singO : bookTourList) {
                    bookTourDTOList.add(this.mapper.toDto(singO));
                }
            }
        }catch (Exception e){
            Logger.getLogger(BookTourServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bookTourDTOList;
    }

    @Override
    public List<BookTourDTO> findBookTourByTours(Long tours) {
        List<BookTourDTO> bookTourDTOList = null;
        List<BookTour> bookTourList = null;
        try {
            bookTourList = this.bookTourRepository.findBookToursByTours(tours);
            if (bookTourList != null && !bookTourList.isEmpty()) {
                bookTourDTOList = new ArrayList<>();
                for (BookTour singO : bookTourList) {
                    bookTourDTOList.add(this.mapper.toDto(singO));
                }
            }
        }catch (Exception e){
            Logger.getLogger(BookTourServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bookTourDTOList;
    }
}
