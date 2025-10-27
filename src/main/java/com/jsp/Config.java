package com.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan(basePackages = "com.jsp")
public class Config implements WebMvcConfigurer {

    @Bean
    public EntityManager getEntityManager() {
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("dev");
        EntityManager manager = factory.createEntityManager();
        return manager;
    }

    @Bean
    public EntityTransaction getEntityTransaction() {
        EntityTransaction transaction = getEntityManager().getTransaction();
        return transaction;
    }

    @Override public void addResourceHandlers(ResourceHandlerRegistry registry)
    {
    	registry.addResourceHandler("/css/**").addResourceLocations("/css/"); }

}
