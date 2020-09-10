package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.BookTourDTO;
import com.albanianyachting.sql.BookTour;
import org.mapstruct.Mapper;
import java.util.List;

@Mapper(componentModel = "spring")
public interface BookTourMapper {
    BookTour toEntity(BookTourDTO bookTourDTO);
    BookTourDTO toDto(BookTour bookTour);
    List<BookTour> toEntities(List<BookTourDTO> bookTourDTOS);
    List<BookTourDTO> toDtos(List<BookTour> bookTourList);
}
