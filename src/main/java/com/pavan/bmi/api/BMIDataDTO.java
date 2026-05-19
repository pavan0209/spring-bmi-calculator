package com.pavan.bmi.api;

public class BMIDataDTO {

    private int height = 150;
    private int weight = 50;
    private double bmi = 0.0;
    private String status = "awaiting";
    private String fitnessTip = "Maintain balanced nutrition and regular exercise to improve your fitness journey.";

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public double getBmi() {
        return bmi;
    }

    public void setBmi(double bmi) {
        this.bmi = bmi;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFitnessTip() {
        return fitnessTip;
    }

    public void setFitnessTip(String fitnessTip) {
        this.fitnessTip = fitnessTip;
    }

    @Override
    public String toString() {
        return "BMIDataDTO{" +
                "height=" + height +
                ", weight=" + weight +
                ", bmi=" + bmi +
                ", status='" + status + '\'' +
                ", fitnessTip='" + fitnessTip + '\'' +
                '}';
    }
}
