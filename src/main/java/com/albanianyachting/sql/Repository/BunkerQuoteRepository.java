package com.albanianyachting.sql.Repository;

import com.albanianyachting.sql.BunkerQuote;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BunkerQuoteRepository extends JpaRepository<BunkerQuote, Long>{
        @Query(value = "SELECT r FROM BunkerQuote r WHERE r.id = :id")
        BunkerQuote findOne(@Param("id") Long id);
}
