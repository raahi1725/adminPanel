package com.raahi.adminPanel;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
@EntityScan("com.raahi.adminPanel.model")
public class AdminPanelApplication extends SpringBootServletInitializer {

	private static Class applicationClass = AdminPanelApplication.class; 
	
	public static void main(String[] args) {
		SpringApplication.run(AdminPanelApplication.class, args);
	}

	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(applicationClass);
    }
}
