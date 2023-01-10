package com.example.furamaresort.model.facility;

public class Facility {
    private int id;
    private String name;
    private Double area;
    private Double cost;
    private int maxPeople;
    private int rentTypeId;
    private int facilityTypeId;
    private String standardRoom;
    private String descriptionOtherConvenience;
    private Double poolArea;
    private int numberOfFloors;
    private String facilityFree;
    private String rentType;
    private String facilityType;

    protected Facility() {
    }

    public Facility(int id, String name, Double area, Double cost, int maxPeople, int rentTypeId, int facilityTypeId,
                    String standardRoom, String descriptionOtherConvenience, Double poolArea, int numberOfFloors,
                    String facilityFree, String rentType, String facilityType) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
        this.rentType = rentType;
        this.facilityType = facilityType;
    }

    public Facility(String name, Double area, Double cost, int maxPeople, int rentTypeId, int facilityTypeId,
                    String standardRoom, String descriptionOtherConvenience, Double poolArea, int numberOfFloors,
                    String facilityFree) {
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
    }

    public Facility(int id, String name, double area, double cost, int maxPeople, int rentTypeId, int facilityTypeId, String standardRoom, String descriptionOtherConvenience, double poolArea, int numberOfFloors, String facilityFree) {
        this.id = id;
        this.name = name;
        this.area = area;
        this.cost = cost;
        this.maxPeople = maxPeople;
        this.rentTypeId = rentTypeId;
        this.facilityTypeId = facilityTypeId;
        this.standardRoom = standardRoom;
        this.descriptionOtherConvenience = descriptionOtherConvenience;
        this.poolArea = poolArea;
        this.numberOfFloors = numberOfFloors;
        this.facilityFree = facilityFree;
    }

//    public Facility( String name, Double area, Double cost, int maxPeople, int rentTypeId,
//                    String standardRoom, Double poolArea, int numberOfFloors, String descriptionOtherConvenience) {
//        this.name = name;
//        this.area = area;
//        this.cost = cost;
//        this.maxPeople = maxPeople;
//        this.rentTypeId = rentTypeId;
//        this.standardRoom = standardRoom;
//        this.poolArea = poolArea;
//        this.numberOfFloors = numberOfFloors;
//        this.descriptionOtherConvenience = descriptionOtherConvenience;
//    }
//
//    public Facility( String name, Double area, Double cost, int maxPeople, int rentTypeId,String facilityFree,
//                    String descriptionOtherConvenience){
//        this.name = name;
//        this.area = area;
//        this.cost = cost;
//        this.maxPeople = maxPeople;
//        this.rentTypeId = rentTypeId;
//        this.facilityFree = facilityFree;
//        this.descriptionOtherConvenience = descriptionOtherConvenience;
//    }
//
//    public Facility( String name, Double area, Double cost, int maxPeople, int rentTypeId, int facilityTypeId,
//                    String standardRoom, String descriptionOtherConvenience, Double poolArea,
//                    int numberOfFloors, String rentType, String facilityType) {
//        this.name = name;
//        this.area = area;
//        this.cost = cost;
//        this.maxPeople = maxPeople;
//        this.rentTypeId = rentTypeId;
//        this.facilityTypeId = facilityTypeId;
//        this.standardRoom = standardRoom;
//        this.descriptionOtherConvenience = descriptionOtherConvenience;
//        this.poolArea = poolArea;
//        this.numberOfFloors = numberOfFloors;
//        this.rentType = rentType;
//        this.facilityType = facilityType;
//    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getArea() {
        return area;
    }

    public void setArea(Double area) {
        this.area = area;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public int getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(int maxPeople) {
        this.maxPeople = maxPeople;
    }

    public int getRentTypeId() {
        return rentTypeId;
    }

    public void setRentTypeId(int rentTypeId) {
        this.rentTypeId = rentTypeId;
    }

    public int getFacilityTypeId() {
        return facilityTypeId;
    }

    public void setFacilityTypeId(int facilityTypeId) {
        this.facilityTypeId = facilityTypeId;
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescriptionOtherConvenience() {
        return descriptionOtherConvenience;
    }

    public void setDescriptionOtherConvenience(String descriptionOtherConvenience) {
        this.descriptionOtherConvenience = descriptionOtherConvenience;
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

    public String getFacilityFree() {
        return facilityFree;
    }

    public void setFacilityFree(String facilityFree) {
        this.facilityFree = facilityFree;
    }

    public String getRentType() {
        return rentType;
    }

    public void setRentType(String rentType) {
        this.rentType = rentType;
    }

    public String getFacilityType() {
        return facilityType;
    }

    public void setFacilityType(String facilityType) {
        this.facilityType = facilityType;
    }
}
