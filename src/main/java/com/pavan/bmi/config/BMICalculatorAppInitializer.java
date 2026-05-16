package com.pavan.bmi.config;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class BMICalculatorAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) {
        System.out.println("onStartup method called...");

        // creating web application context
        AnnotationConfigWebApplicationContext webApplicationContext = new AnnotationConfigWebApplicationContext();
        webApplicationContext.register(BMIAppConfig.class);

        // creating dispatcher servlet object
        DispatcherServlet dispatcherServlet = new DispatcherServlet(webApplicationContext);

        // register dispatcher servlet with servlet context
        ServletRegistration.Dynamic registered = servletContext.addServlet("myDispatcherServlet", dispatcherServlet);

        // setting properties
        registered.setLoadOnStartup(1);
        registered.addMapping("/");
    }
}
