package com.albanianyachting.controllers;

import com.albanianyachting.dto.BunkerQuoteDTO;
import com.albanianyachting.dto.mapper.BunkerQuoteMapper;
import com.albanianyachting.services.BunkerQuoteService;
import com.albanianyachting.sql.BunkerQuote;
import com.albanianyachting.sql.Repository.BunkerQuoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api")
public class BunkerQuoteController {
    @Autowired
    private BunkerQuoteRepository bunkerQuoteRepository;
    @Autowired
    private BunkerQuoteService bunkerQuoteService;
    @Autowired
    private BunkerQuoteMapper mapper;

    @PostMapping("/bunkerQuote")
    public BunkerQuoteDTO createBunkerQuote ( @RequestBody BunkerQuoteDTO bunkerQuoteDTO){ return this.bunkerQuoteService.createBunkerQuote(bunkerQuoteDTO);}

    @PutMapping("/bunkerQuote")
    public BunkerQuoteDTO updateBunkerQuote ( @RequestBody BunkerQuoteDTO bunkerQuoteDTO){ return this.bunkerQuoteService.updateBunkerQuote(bunkerQuoteDTO);}

    @GetMapping("/bunkerQuote")
    public List<BunkerQuoteDTO> getBunkerQuote (){return this.bunkerQuoteService.findBunkerQuote();}

    @DeleteMapping("/bunkerQuote/{id}")
    public BunkerQuoteDTO deleteBunkerQuote(@PathVariable Long id){
        final BunkerQuote bunkerQuote =this.bunkerQuoteRepository.findOne(id);
        if (bunkerQuote!=null){
            this.bunkerQuoteRepository.delete(bunkerQuote);
        }
        return this.mapper.toDto(bunkerQuote);
    }

}
