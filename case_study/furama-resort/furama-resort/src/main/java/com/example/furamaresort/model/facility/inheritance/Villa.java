package com.example.furamaresort.model.facility.inheritance;

import com.example.furamaresort.model.facility.Facility;

public class Villa extends Facility {
    private String standardRoom;
    private Double poolArea;
    private int numberOfFloors;

    public Villa() {
    }

    public Villa(String standardRoom, Double poolArea, int numberOfFloors) {
        this.standardRoom = standardRoom;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
    }

    public Villa(int id, String name, Double area, Double cost, int maxPeople, String rentType, String standardRoom, Double poolArea, int numberOfFloors) {
        super(id, name, area, cost, maxPeople, rentType);
        this.standardRoom = standardRoom;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public Double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(Double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumberOfFloors() {
        return numberOfFloors;
    }

    public void setNumberOfFloors(int numberOfFloors) {
        this.numberOfFloors = numberOfFloors;
    }
}
