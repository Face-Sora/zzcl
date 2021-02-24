package com.xinxi.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MyWebConfig implements WebMvcConfigurer {

    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/licenses/**").addResourceLocations("file:C:/licenses/");
        registry.addResourceHandler("/products/**").addResourceLocations("file:C:/products/");
    }
}
