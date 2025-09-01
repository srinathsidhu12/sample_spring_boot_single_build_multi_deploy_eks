package com.example.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    // Read value from property file (application.properties / application-<profile>.properties)
    @Value("${app.message}")
    private String message;

    @GetMapping("/")
    public String hello() {
        return message;
    }
}


