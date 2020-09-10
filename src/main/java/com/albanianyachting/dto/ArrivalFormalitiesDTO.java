package com.albanianyachting.dto;


import java.io.Serializable;

public class ArrivalFormalitiesDTO implements Serializable {
    private Long id;
    private String arrivalFrom;
    private String arrivalTo;
    private String arrivalTime;

    public ArrivalFormalitiesDTO() {
    }

    public ArrivalFormalitiesDTO(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getArrivalFrom() {
        return arrivalFrom;
    }

    public void setArrivalFrom(String arrivalFrom) {
        this.arrivalFrom = arrivalFrom;
    }

    public String getArrivalTo() {
        return arrivalTo;
    }

    public void setArrivalTo(String arrivalTo) {
        this.arrivalTo = arrivalTo;
    }

    public String getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }
}
