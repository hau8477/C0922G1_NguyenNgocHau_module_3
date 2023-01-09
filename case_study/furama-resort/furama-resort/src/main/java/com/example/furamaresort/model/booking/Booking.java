package com.example.furamaresort.model.booking;

public class Booking {
    private int id;
    private String startDay;
    private String endDay;
    private String customerID;
    private String nameService;

    public Booking() {
    }

    public Booking(int id, String startDay, String endDay, String customerID, String nameService) {
        this.id = id;
        this.startDay = startDay;
        this.endDay = endDay;
        this.customerID = customerID;
        this.nameService = nameService;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStartDay() {
        return startDay;
    }

    public void setStartDay(String startDay) {
        this.startDay = startDay;
    }

    public String getEndDay() {
        return endDay;
    }

    public void setEndDay(String endDay) {
        this.endDay = endDay;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getNameService() {
        return nameService;
    }

    public void setNameService(String nameService) {
        this.nameService = nameService;
    }
}
