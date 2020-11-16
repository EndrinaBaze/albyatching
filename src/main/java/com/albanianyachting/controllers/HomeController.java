package com.albanianyachting.controllers;

import com.albanianyachting.dto.ServicesDTO;
import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.UsersMapper;
import com.albanianyachting.security.JwtTokenProvider;
import com.albanianyachting.services.*;
import com.albanianyachting.sql.Role;
import com.albanianyachting.sql.Users;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import sun.security.util.SecurityConstants;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

@Controller(value = "home")
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
    @Autowired
    private ServicesService servicesService;
    @Autowired
    private PortsService portsService;
    @Autowired
    private UsersMapper usersMapper;

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

    @GetMapping(value = {"/servicesC"})
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
        model.addAttribute("usersDTO", new UsersDTO());
        return "admin/login";
    }

    @GetMapping(value = {"/admin"})
    @ApiOperation(value = "Return login page", notes = "Retrieving the collection of login page operations")
    public String adminPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null &&
                auth.getPrincipal() != null
                && auth.getAuthorities() != null
                && auth.getAuthorities()
                .stream().filter(s -> s.equals(Role.ROLE_ADMIN.getAuthority())).findAny().isPresent()
        ) {
            return "controlpanel";
        }
        model.addAttribute("usersDTO", new UsersDTO());
        return "admin/login";
    }

    @GetMapping(value = {"/register"})
    @ApiOperation(value = "Return register page", notes = "Retrieving the collection of register page operations")
    public String registerPager(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("usersDTO", new UsersDTO());
        return "admin/register";
    }

    @PostMapping(value = {"/add-users"})
    @ApiOperation(value = "Return login page", notes = "Retrieving the collection of manage-users page operations including Add users")
    public String addUsersPager(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("usersDTO", new UsersDTO());
        return "admin/manage-users";
    }

    @PostMapping(value = "/edit-users/{id}")
    @ApiOperation(value = "Return manage-users page", notes = "Retrieving the collection of manage-users page operations including Update Users")
    public String editUser(ModelMap model, @PathVariable("id") Long id, HttpServletRequest request) {
        UsersDTO usersDTO = this.usersMapper.toDto(this.usersService.findUsersById(id));
        model.addAttribute("usersDTO", usersDTO);
        return "admin/manage-users";
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
        // model.addAttribute("listAgents", this.usersService.findUsers());
        model.addAttribute("listUsers", usersMapper.toDtos(usersService.findUsers()));
        return "users";
    }

    @GetMapping(value = {"/bookservice"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String bookservicePage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "bookservice";
    }

    @GetMapping(value = {"/ports"})
    @ApiOperation(value = "Return ports page", notes = "Retrieving the collection of ports page operations")
    public String portsPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "ports";
    }

    @GetMapping(value = {"/portsCP"})
    @ApiOperation(value = "Return ports page", notes = "Retrieving the collection of ports page operations")
    public String portsCPPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listPorts", this.portsService.findPorts());
        return "portsCP";
    }

    @GetMapping(value = {"/arrivalformalitiesform"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String arrivalformalitiesFormPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "arrivalformalitiesform";
    }

    @GetMapping(value = {"/booktourform"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String booktourFormPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "booktourform";
    }

    @GetMapping(value = {"/bunkeringform"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String bunkeringFormPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "bunkeringform";
    }

    @GetMapping(value = {"/provisioningform"})
    @ApiOperation(value = "Return users page", notes = "Retrieving the collection of users page operations")
    public String provisioningFormPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "provisioningform";
    }

    @GetMapping(value = {"/servicesCP"})
    public String getServices(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listServices", this.servicesService.findServices());
        return "servicesCP";
    }

    @GetMapping(value = {"/manageService"})
    public String manageServices(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        model.addAttribute("listServices", this.servicesService.findServices());
        model.addAttribute("serviceDTO", new ServicesDTO());
        return "manageService";
    }

    //    @PostMapping ("/newService")
    @RequestMapping(value = "/newService", method = RequestMethod.POST)
    public String newService(ModelMap model, HttpServletRequest request) {
//        model.addAttribute("listService", this.servicesService.findServices());
//        model.addAttribute("serviceDTO", new ServicesDTO());
        return "manageService";
    }

    @RequestMapping(value = "/insertService", method = RequestMethod.POST, params = {"saveService"})
    public String insertService(Model model, RedirectAttributes redirect, @Validated ServicesDTO servicesDTO, BindingResult result, HttpServletRequest request) {
        servicesDTO = this.servicesService.createServices(servicesDTO);
        if (servicesDTO != null) {
            return "redirect:/servicesCP";
        } else {
            model.addAttribute("servicesDTO", servicesDTO);
            return "manageService";
        }
    }

    // test billing form
    @GetMapping(value = {"/billingform"})
    @ApiOperation(value = "Return billingform page", notes = "Retrieving the billingform page operations")
    public String billingFormPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        return "billingform";
    }
}
