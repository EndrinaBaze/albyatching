package com.albanianyachting.controllers;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.UsersMapper;
import com.albanianyachting.services.UsersService;
import com.albanianyachting.sql.Role;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.stream.Collectors;

@Controller("admin")
@RequestMapping("/admin")
@Api("Set of endpoints for Creating, Retrieving, Updating and Deleting Entities from Administrative Sites")
public class AdminController {

    @Autowired
    private UsersService usersService;
    @Autowired
    private UsersMapper usersMapper;

    @GetMapping(value = {"","/"})
    @ApiOperation(value = "Return admin/controlpanel or admin/login page", notes = "Retrieving the page if logged in or not")
    public String adminPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        boolean hasRole = auth.getAuthorities().
                stream().
                filter(s -> s != null && s.toString().equals(Role.ROLE_ADMIN.getAuthority()))
                .collect(Collectors.toList()).size() > 0;

        if (auth != null &&
                auth.getPrincipal() != null
                && auth.getAuthorities() != null && hasRole && auth.isAuthenticated()
        ) {
            return "admin/controlpanel";
        }
        model.addAttribute("usersDTO", new UsersDTO());
        return "admin/login";
//        model.addAttribute("usersDTO", new UsersDTO());
//        return "admin/admin";
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

}
