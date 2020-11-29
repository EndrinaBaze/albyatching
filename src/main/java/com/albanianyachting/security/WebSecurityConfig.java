package com.albanianyachting.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@Configuration
//@EnableWebSecurity
//@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig {//extends WebSecurityConfigurerAdapter {


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder(12);
    }






    @Configuration
    @Order(1)
    public static class RestApiSecurityConfig {//extends WebSecurityConfigurerAdapter{
        @Autowired
        private JwtTokenProvider jwtTokenProvider;

//        @Override
//        @Bean
//        public AuthenticationManager authenticationManagerBean() throws Exception {
//            return super.authenticationManagerBean();
//        }
      //  @Override
        protected void configure(HttpSecurity http) throws Exception {

            // Disable CSRF (cross site request forgery)
            http.csrf().disable();

            // No session will be created or used by spring security
            http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

            // Entry points
            http.authorizeRequests()//
                    .antMatchers("/login").permitAll()//
                    .antMatchers("/admin").permitAll()//
                    .antMatchers("/api/admin").permitAll()//
                    .antMatchers("/api/users/signin").permitAll()//
                    .antMatchers("/api/users/signup").permitAll();//
            // .antMatchers("/h2-console/**/**").permitAll()
            // Disallow everything else..
            // .anyRequest().authenticated();

            // If a user try to access a resource without having enough permissions
            http.exceptionHandling().accessDeniedPage("/login");

            // Apply JWT
            http.apply(new JwtTokenFilterConfigurer(jwtTokenProvider));

            // Optional, if you want to test the API from a browser
            // http.httpBasic();
        }

       // @Override
        public void configure(WebSecurity web) throws Exception {
            // Allow swagger to be accessed without authentication
            web.ignoring().antMatchers("/v2/api-docs")//
                    .antMatchers("/swagger-resources/**")//
                    .antMatchers("/swagger-ui.html")//
                    .antMatchers("/configuration/**")//
                    .antMatchers("/webjars/**")//
                    .antMatchers("/public")

//                .antMatchers("/**/*.{js,html}")
                    .antMatchers("/resources/**")
//                .antMatchers("/WEB-INF/**")
//                .antMatchers("/resources/**", "/statics/**")


                    // Un-secure H2 Database (for testing purposes, H2 console shouldn't be unprotected in production)
                    .and()
                    .ignoring()
                    .antMatchers("/h2-console/**/**");
            ;
        }
    }

    @Configuration
    @Order(2)
    public static class LoginFormSecurityConfig {//extends WebSecurityConfigurerAdapter {
       // @Autowired
        private PasswordEncoder passwordEncoder;

//        @Autowired
//        public void configureInMemoryAuthentication(AuthenticationManagerBuilder auth) throws Exception {
//            auth.inMemoryAuthentication().withUser("toni").password(passwordEncoder.encode("1234")).roles("ADMIN");
//        }

    //    @Override
        protected void configure(HttpSecurity http) throws Exception {
            http
                    .csrf().disable()

            // Entry points
            .authorizeRequests()//
                    .antMatchers("/login").permitAll()//
                    .antMatchers("/admin").permitAll()//
                    .antMatchers("/api/admin").permitAll()//
                    .antMatchers("/api/users/signin").permitAll()//
                    .antMatchers("/api/users/signup").permitAll().and().formLogin();//

//                    .antMatcher("/**").authorizeRequests()
//                    .antMatchers("/resources/**").permitAll()
//                    .antMatchers("/**").hasRole("ADMIN")
//                    .and().formLogin();

            http.sessionManagement().maximumSessions(1).expiredUrl("/login?expired=true");
        }

      //  @Override
        public void configure(WebSecurity web) throws Exception {
            // Allow swagger to be accessed without authentication
            web.ignoring().antMatchers("/v2/api-docs")//
                    .antMatchers("/swagger-resources/**")//
                    .antMatchers("/swagger-ui.html")//
                    .antMatchers("/configuration/**")//
                    .antMatchers("/webjars/**")//
                    .antMatchers("/public")

//                .antMatchers("/**/*.{js,html}")
                    .antMatchers("/resources/**")
//                .antMatchers("/WEB-INF/**")
//                .antMatchers("/resources/**", "/statics/**")


                    // Un-secure H2 Database (for testing purposes, H2 console shouldn't be unprotected in production)
                    .and()
                    .ignoring()
                    .antMatchers("/h2-console/**/**");
            ;
        }
    }

}
