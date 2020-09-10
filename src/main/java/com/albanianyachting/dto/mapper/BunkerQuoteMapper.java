package com.albanianyachting.dto.mapper;

import com.albanianyachting.dto.BunkerQuoteDTO;
import com.albanianyachting.sql.BunkerQuote;
import org.mapstruct.Mapper;
import java.util.List;

@Mapper(componentModel = "spring")
public interface BunkerQuoteMapper {
    BunkerQuote toEntity(BunkerQuoteDTO bunkerQuoteDTO);
    BunkerQuoteDTO toDto(BunkerQuote bunkerQuote);
    List<BunkerQuote> toEntities(List<BunkerQuoteDTO> bunkerQuoteDTOS);
    List<BunkerQuoteDTO> toDtos(List<BunkerQuote> bunkerQuoteList);
}
