package com.albanianyachting.sql;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "arrival_formalities")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@Proxy(lazy = false)
public class ArrivalFormalities implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "sequenceGenerator")
    @SequenceGenerator(name = "sequenceGenerator")
    @Column(name = "ID", unique = true, nullable = false)
    private Long id;
    @Column(name = "arrival_from", nullable = false)
    private String arrivalFrom;
    @Column(name = "arrival_to", nullable = false)
    private String arrivalTo;
    @Column(name = "arrival_time", nullable = false)
    private String arrivalTime;

    public ArrivalFormalities() {
    }

    public ArrivalFormalities(Long id) {
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
