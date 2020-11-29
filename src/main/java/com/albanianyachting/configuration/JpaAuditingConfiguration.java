package com.albanianyachting.configuration;

import com.albanianyachting.sql.Users;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Optional;

@Configuration
@EnableJpaAuditing(auditorAwareRef = "auditorProvider")
public class JpaAuditingConfiguration {

    @Bean
    public AuditorAware<String> auditorProvider() {

        //
        return new AuditorAware<String>() {
            @Override
            public Optional<String> getCurrentAuditor() {
                     /*
          if you are using spring security, you can get the currently logged username with following code segment.
          SecurityContextHolder.getContext().getAuthentication().getName()
         */
                if (SecurityContextHolder.getContext().getAuthentication() != null) {
                    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
                    Object principal = auth.getPrincipal();
                    if(principal instanceof UserDetails) {
                        UserDetails userDetails = (UserDetails) principal;
                        return Optional.of(userDetails.getUsername());
                    }
                    return Optional.of((String) principal); // anonymousUser
                } else {
                    return Optional.ofNullable("Unknown");
                }

            }

        };
    }

}
