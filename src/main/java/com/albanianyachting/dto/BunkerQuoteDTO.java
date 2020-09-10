package com.albanianyachting.dto;

import javax.persistence.Column;
import java.io.Serializable;

public class BunkerQuoteDTO implements Serializable {
    private Long id;
    private String name;
    private String lastname;
    private String email;
    private String phoneNumber;
    private Integer quantity;
    private String dutyfreeCity;
    private String comments;

    public BunkerQuoteDTO() {
    }

    public BunkerQuoteDTO(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public String getDutyfreeCity() {
        return dutyfreeCity;
    }

    public void setDutyfreeCity(String dutyfreeCity) {
        this.dutyfreeCity = dutyfreeCity;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
