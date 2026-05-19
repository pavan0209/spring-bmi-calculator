package com.pavan.bmi.controllers;

import com.pavan.bmi.api.BMIDataDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BMIAppController {

    @RequestMapping("/")
    public String landing() {
        return "index";
    }

    @RequestMapping("/home")
    public String home(@ModelAttribute("bmiData") BMIDataDTO bmiDataDTO) {

        return "home-page";
    }

    @RequestMapping("/calculateBMI")
    public String calculateBMI(@ModelAttribute("bmiData") BMIDataDTO bmiDataDTO) {

        // CONVERT HEIGHT CM TO METER
        double heightInMeter = bmiDataDTO.getHeight() / 100.0;

        // BMI CALCULATION
        double bmi = bmiDataDTO.getWeight() / (heightInMeter * heightInMeter);

        // ROUND OFF BMI TO 2 DECIMAL
        bmi = Math.round(bmi * 100.0) / 100.0;

        String status;
        String fitnessTip;

        if (bmi < 18.5) {
            status = "underweight";
            fitnessTip = "Focus on nutrient-rich meals and strength training exercises. Maintain a consistent diet plan to gain healthy body weight.";
        }
        else if (bmi >= 18.5 && bmi <= 24.9) {
            status = "healthy";
            fitnessTip = "Great job maintaining a healthy BMI and balanced lifestyle. Continue regular workouts and nutritious eating habits.";
        }
        else if (bmi >= 25 && bmi <= 29.9) {
            status = "overweight";
            fitnessTip = "Include more physical activities and reduce processed food intake. A balanced calorie deficit can help improve overall fitness.";
        }
        else {
            status = "obese";
            fitnessTip = "Start with small lifestyle improvements and daily physical activity. Consult healthcare professionals for a personalized fitness plan.";
        }
        bmiDataDTO.setBmi(bmi);
        bmiDataDTO.setStatus(status);
        bmiDataDTO.setFitnessTip(fitnessTip);

        return "home-page";
    }

    @RequestMapping("/profile")
    public String profile() {
        return "profile-page";
    }

    @RequestMapping("/history")
    public String history() {
        return "history-page";
    }
}
