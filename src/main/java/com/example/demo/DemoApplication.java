package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import java.util.Arrays;

@SpringBootApplication
public class DemoApplication {
    public static void main(String[] args) {
        ConfigurableApplicationContext ctx = SpringApplication.run(DemoApplication.class, args);
        System.out.println("Active profiles: " + Arrays.toString(ctx.getEnvironment().getActiveProfiles()));
        System.out.println("app.message = " + ctx.getEnvironment().getProperty("app.message"));
    }
}

