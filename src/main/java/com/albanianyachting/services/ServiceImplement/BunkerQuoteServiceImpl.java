package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.BunkerQuoteDTO;
import com.albanianyachting.dto.mapper.BunkerQuoteMapper;
import com.albanianyachting.services.BunkerQuoteService;
import com.albanianyachting.sql.BunkerQuote;
import com.albanianyachting.sql.Repository.BunkerQuoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class BunkerQuoteServiceImpl implements BunkerQuoteService {
    @Autowired
    private BunkerQuoteMapper mapper;
    @Autowired
    private BunkerQuoteRepository bunkerQuoteRepository;
    @Override
    public BunkerQuoteDTO createBunkerQuote(BunkerQuoteDTO bunkerQuoteDTO) {
        BunkerQuoteDTO bunkerQuoteDto = new BunkerQuoteDTO();
        try {
            BunkerQuote entity =this.mapper.toEntity(bunkerQuoteDTO);
            entity=this.bunkerQuoteRepository.saveAndFlush(entity);
            bunkerQuoteDto=this.mapper.toDto(entity);

        }catch (Exception e){
            Logger.getLogger(BunkerQuoteServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bunkerQuoteDto;
    }

    @Override
    public BunkerQuoteDTO updateBunkerQuote(BunkerQuoteDTO bunkerQuoteDTO) {
        try {
            BunkerQuote ebunker=this.bunkerQuoteRepository.findOne(bunkerQuoteDTO.getId());
            if (ebunker!=null){
                ebunker=this.mapper.toEntity(bunkerQuoteDTO);
                ebunker=this.bunkerQuoteRepository.saveAndFlush(ebunker);
                bunkerQuoteDTO=this.mapper.toDto(ebunker);
            }
        }catch (Exception e){
            Logger.getLogger(BunkerQuoteServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bunkerQuoteDTO;
    }

    @Override
    public List<BunkerQuoteDTO> findBunkerQuote() {
        List<BunkerQuoteDTO> bunkerQuoteDTOList= new ArrayList<>();
        try {
            List<BunkerQuote> bunkerQuoteList =this.bunkerQuoteRepository.findAll();
            if (bunkerQuoteList!=null && !bunkerQuoteList.isEmpty()){
                for (BunkerQuote ebunkerQuote: bunkerQuoteList){
                    bunkerQuoteDTOList.add(mapper.toDto(ebunkerQuote));
                }
            }

        }catch (Exception e){
            Logger.getLogger(BunkerQuoteServiceImpl.class.getName()).log(Level.SEVERE, e.getMessage(), e);
        }
        return bunkerQuoteDTOList;
    }
}
