package com.example.assignment;

import org.modelmapper.ModelMapper;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;

@SpringBootApplication
@OpenAPIDefinition(info = @io.swagger.v3.oas.annotations.info.Info(title = "Assignment", version = "1.0"), 
        servers = {
        @io.swagger.v3.oas.annotations.servers.Server(url = "http://localhost:8080"),
        @io.swagger.v3.oas.annotations.servers.Server(url = "http://rookie.com") })
public class AssignmentApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(AssignmentApplication.class, args);
    }

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }

    @Override
    public void run(String... args) throws Exception {

    }
}
