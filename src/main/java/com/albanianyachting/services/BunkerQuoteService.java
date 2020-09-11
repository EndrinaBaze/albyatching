package com.albanianyachting.services;

import com.albanianyachting.dto.BunkerQuoteDTO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BunkerQuoteService {
    BunkerQuoteDTO createBunkerQuote (BunkerQuoteDTO bunkerQuoteDTO);
    BunkerQuoteDTO updateBunkerQuote (BunkerQuoteDTO bunkerQuoteDTO);
    List<BunkerQuoteDTO> findBunkerQuote();
}
