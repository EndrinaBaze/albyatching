package com.albanianyachting.services.ServiceImplement;

import com.albanianyachting.dto.UsersDTO;
import com.albanianyachting.dto.mapper.UsersMapper;
import com.albanianyachting.exceptionhandler.CustomException;
import com.albanianyachting.security.JwtTokenProvider;
import com.albanianyachting.services.UsersService;
import com.albanianyachting.sql.Repository.UsersRepository;
import com.albanianyachting.sql.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private AuthenticationManager authenticationManager;

    public String signin(String username, String password) {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
            String token = jwtTokenProvider.createToken(username, userRepository.findByUsername(username).getRoles());
            Authentication auth = jwtTokenProvider.getAuthentication(token);
            SecurityContextHolder.getContext().setAuthentication(auth);
            //    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            return token;
        } catch (AuthenticationException e) {
            throw new CustomException("Invalid username/password supplied", HttpStatus.UNPROCESSABLE_ENTITY);
        } catch (RuntimeException e) {
            throw new CustomException("Runtime Exception", HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (Exception e) {
            throw new CustomException("Internal Server Error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    public String signup(Users user) {
        if (!userRepository.existsByUsername(user.getUsername())) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userRepository.save(user);
            return jwtTokenProvider.createToken(user.getUsername(), user.getRoles());
        } else {
            throw new CustomException("Username is already in use", HttpStatus.UNPROCESSABLE_ENTITY);
        }
    }

    public Users createUserFromAdmin(Users user) {
        if (!userRepository.existsByUsername(user.getUsername())) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            return userRepository.save(user);
        } else {
            throw new CustomException("Username is already in use", HttpStatus.UNPROCESSABLE_ENTITY);
        }
    }

    public Users updateUserFromAdmin(Users user) {
        if (!userRepository.existsByUsernameAndIdIsNot(user.getUsername(),user.getId())) {
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            return userRepository.save(user);
        } else {
            throw new CustomException("Username is already in use", HttpStatus.UNPROCESSABLE_ENTITY);
        }
    }

    public void delete(String username) {
        userRepository.deleteByUsername(username);
    }

    public void deleteById(Long id) {
        userRepository.deleteById(id);
    }

    public Users search(String username) {
        Users user = userRepository.findByUsername(username);
        if (user == null) {
            throw new CustomException("The user doesn't exist", HttpStatus.NOT_FOUND);
        }
        return user;
    }

    public Users whoami(HttpServletRequest req) {
        return userRepository.findByUsername(jwtTokenProvider.getUsername(jwtTokenProvider.resolveToken(req)));
    }

    public String refresh(String username) {
        return jwtTokenProvider.createToken(username, userRepository.findByUsername(username).getRoles());
    }

    public List<Users> findUsers() {
        List<Users> user = userRepository.findAll();
        if (user == null || user.isEmpty()) {
            throw new CustomException("No users were found", HttpStatus.NOT_FOUND);
        }
        return user;
    }

    public Users findUsersById(Long id) {
        return userRepository.findOne(id);
    }
}
