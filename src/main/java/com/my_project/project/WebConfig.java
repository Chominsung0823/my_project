package com.my_project.project;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebConfig implements WebMvcConfigurer {
	@Override
  public void addResourceHandlers(ResourceHandlerRegistry registry) {
		 registry.addResourceHandler("/book_images/**")
	     .addResourceLocations("file:///C:/myWorkspace/book_images/");
	    //.addResourceLocations("file:///usr/local/project/book_images/"); // 서버 경로
	    
	    registry.addResourceHandler("/images/**")
	     .addResourceLocations("file:///C:/myWorkspace/book_images/");
	    //.addResourceLocations("file:///usr/local/project/upload/"); // 서버 경로
	  }
}
