package com.example.furamaresort.model.facility.inheritance;

import com.example.furamaresort.model.facility.Facility;

public class Room extends Facility {
    private String facilityFree;

    public Room() {
    }

    public Room(String facilityFree) {
        this.facilityFree = facilityFree;
    }

    public Room(int id, String name, Double area, Double cost, int maxPeople, String rentType, String facilityFree) {
        super(id, name, area, cost, maxPeople, rentType);
        this.facilityFree = facilityFree;
    }

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }
}
