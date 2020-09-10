package com.albanianyachting.sql;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.io.Serializable;

    @Entity
    @Table(name = "tours")
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @Proxy(lazy = false)
    public class Tours implements Serializable {
        private static final long serialVersionUID = 1L;
        @Id
        @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequenceGenerator")
        @SequenceGenerator(name = "sequenceGenerator")
        @Column(name = "ID", unique = true, nullable = false)
        private Long id;
        @Column(name = "tour_type", nullable = false)
        private String tourType;

        public Tours(Long id) {
            this.id = id;
        }

        public Tours() {

        }

        public Long getId() {

            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }
        public String getTourType() {
            return tourType;
        }

        public void setTourType(String tourType) {
            this.tourType = tourType;
        }
    }

