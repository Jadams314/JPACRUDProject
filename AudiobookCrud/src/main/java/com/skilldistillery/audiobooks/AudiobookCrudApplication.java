package com.skilldistillery.audiobooks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class AudiobookCrudApplication extends SpringBootServletInitializer {
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(AudiobookCrudApplication.class);
	  }

	public static void main(String[] args) {
		SpringApplication.run(AudiobookCrudApplication.class, args);
	}

}
