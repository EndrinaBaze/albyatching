package com.albanianyachting.controllers;

import com.albanianyachting.services.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
@Api("Set of endpoints for Creating, Retrieving, Updating and Deleting.")
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
    @ApiOperation(value = "Return home page", notes = "Retrieving the collection of home page operations")
    public String homePage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "index";
    }
    @GetMapping(value = {"/about"})
    @ApiOperation(value = "Return about us page", notes = "Retrieving the collection of about us page operations")
    public String aboutPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "about";
    }
    @GetMapping(value = {"/services"})
    @ApiOperation(value = "Return services page", notes = "Retrieving the collection of services page operations")
    public String activitiesPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "services";
    }
    @GetMapping(value = {"/contact"})
    @ApiOperation(value = "Return contact us page", notes = "Retrieving the collection of contact page operations")
    public String contactPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "contact";
    }
    @GetMapping(value = {"/login"})
    @ApiOperation(value = "Return login page", notes = "Retrieving the collection of login page operations")
    public String loginPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "login";
    }
    @GetMapping(value = {"/controlpanel"})
    @ApiOperation(value = "Return controlpanel page", notes = "Retrieving the collection of controlpanel page operations")
    public String controlpanelPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "controlpanel";
    }
    @GetMapping(value = {"/tours"})
    @ApiOperation(value = "Return tours page", notes = "Retrieving the collection of tours page operations")
    public String toursPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listTours", this.toursService.findTours());
        return "tours";
    }
    @GetMapping(value = {"/provisioning"})
    @ApiOperation(value = "Return provisioning page", notes = "Retrieving the collection of provisioning page operations")
    public String provisioningPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listProvisioning", this.provisioningService.findProvisionings());
        return "provisioning";
    }
    @GetMapping(value = {"/booktour"})
    @ApiOperation(value = "Return booktour page", notes = "Retrieving the collection of booktour page operations")
    public String bookTourPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listBookTour", this.bookTourService.findBookTour());
        return "booktour";
    }
    @GetMapping(value = {"/bunkerquote"})
    @ApiOperation(value = "Return bunkerquote page", notes = "Retrieving the collection of bunkerquote page operations")
    public String bunkerQuotePage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listBunkerQuote", this.bunkerQuoteService.findBunkerQuote());
        return "bunkerquote";
    }
    @GetMapping(value = {"/arrivalformalities"})
    @ApiOperation(value = "Return arrivalformalities page", notes = "Retrieving the collection of arrivalformalities page operations")
    public String arrivalFormalitiesPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listArrivalFormalities", this.arrivalFormalitiesService.findArrivalFormalities());
        return "arrivalformalities";
    }
    @GetMapping(value = {"/users"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String agentsPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listAgents", this.usersService.findUsers());
        return "users";
    }
}
