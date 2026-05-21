package com.pavan.bmi.controllers;

import com.pavan.bmi.api.UserRegistration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @RequestMapping("/register-user")
    public String registerUser(@ModelAttribute("regUser") UserRegistration regUser) {

        System.out.println(regUser.getUserName());
        System.out.println(regUser.getPassword());

        return "index";
    }
}
