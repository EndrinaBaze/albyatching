package com.albanianyachting.dto;

import java.io.Serializable;

public class BookTourDTO implements Serializable {
    private Long id;
    private String name;
    private String lastname;
    private String email;
    private String phoneNumber;
    private String bookingDate;
    private String message;
    private UsersDTO agents;
    private ToursDTO tours;

    public BookTourDTO() {
    }

    public BookTourDTO(Long id) {
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

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public UsersDTO getAgents() {
        return agents;
    }

    public void setAgents(UsersDTO agents) {
        this.agents = agents;
    }

    public ToursDTO getTours() {
        return tours;
    }

    public void setTours(ToursDTO tours) {
        this.tours = tours;
    }
}
