package com.albanianyachting.dto;

import java.io.Serializable;

public class ToursDTO implements Serializable {
    private Long id;
    private String tourType;

    public ToursDTO() {
    }

    public ToursDTO(Long id) {
        this.id = id;
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
