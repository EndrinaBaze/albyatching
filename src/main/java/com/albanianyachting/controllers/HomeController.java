package com.albanianyachting.controllers;

import com.albanianyachting.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
public class HomeController {
    @Autowired
    private ToursService toursService;
    @Autowired
    private ProvisioningService provisioningService;
    @Autowired
    private BookTourService bookTourService;
    @Autowired
    private BunkerQuoteService bunkerQuoteService;
    @Autowired
    private ArrivalFormalitiesService arrivalFormalitiesService;
    @Autowired
    private UsersService usersService;

    @GetMapping(value = {"/"})
    public String homePage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "index";
    }
    @GetMapping(value = {"/about"})
    public String aboutPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "about";
    }
    @GetMapping(value = {"/services"})
    public String activitiesPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "activities";
    }
    @GetMapping(value = {"/contact"})
    public String contactPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "contact";
    }
    @GetMapping(value = {"/login"})
    public String loginPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "login";
    }
    @GetMapping(value = {"/controlpanel"})
    public String controlpanelPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "controlpanel";
    }
    @GetMapping(value = {"/tours"})
    public String toursPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listTours", this.toursService.findTours());
        return "tours";
    }
    @GetMapping(value = {"/provisioning"})
    public String provisioningPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listProvisioning", this.provisioningService.findProvisionings());
        return "provisioning";
    }
    @GetMapping(value = {"/booktour"})
    public String bookTourPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listBookTour", this.bookTourService.findBookTour());
        return "booktour";
    }
    @GetMapping(value = {"/bunkerquote"})
    public String bunkerQuotePage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listBunkerQuote", this.bunkerQuoteService.findBunkerQuote());
        return "bunkerquote";
    }
    @GetMapping(value = {"/arrivalformalities"})
    public String arrivalFormalitiesPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listArrivalFormalities", this.arrivalFormalitiesService.findArrivalFormalities());
        return "arrivalformalities";
    }
    @GetMapping(value = {"/users"})
    public String agentsPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listAgents", this.usersService.findUsers());
        return "users";
    }
}
