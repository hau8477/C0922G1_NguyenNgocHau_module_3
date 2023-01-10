package com.example.furamaresort.controller;

import com.example.furamaresort.model.FacilityType;
import com.example.furamaresort.model.RentType;
import com.example.furamaresort.model.facility.Facility;
import com.example.furamaresort.service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", value = "/service")
public class FacilityServlet extends HttpServlet {
    private final FacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                createService(request, response);
                break;
            case "edit":
                editService(request,response);
                break;
            case "delete":
                deleteService(request,response);
                break;
            default:
                break;
        }
    }

    private void deleteService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idDelete"));

        request.setAttribute("mess", "Successfully delete!");

        if (!this.facilityService.deleteObject(id)) {
            request.setAttribute("mess", "Delete failure!");
        }

        List<Facility> facilities = this.facilityService.selectAllObject();
        List<FacilityType> facilityTypes = this.facilityService.selectFacilityType();
        List<RentType> rentTypes = this.facilityService.selectRentType();

        request.setAttribute("facilities", facilities);
        request.setAttribute("facilityTypes", facilityTypes);
        request.setAttribute("rentTypes", rentTypes);

        try {
            request.getRequestDispatcher("service/service.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void editService(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("idServiceEdit"));
        String name = request.getParameter("nameServiceEdit");
        double area = Double.parseDouble(request.getParameter("areaEdit"));
        double cost = Double.parseDouble(request.getParameter("costEdit"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeopleEdit"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentTypeEdit"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeIdEdit"));
        String standardRoom = request.getParameter("standardRoomEdit");
        String descriptionOtherConvenience = request.getParameter("descriptionOtherConvenienceEdit");
        double poolArea = 0;
        try {
            poolArea = Double.parseDouble(request.getParameter("poolAreaEdit"));
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        int numberOfFloors = 0;
        try {
            numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloorsEdit"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        String facilityFree = request.getParameter("facilityFreeEdit");

        Facility facility = new Facility(id, name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom,
                descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree);

        request.setAttribute("mess", "Successfully update!");

        if (!this.facilityService.updateObject(facility)) {
            request.setAttribute("mess", "Update failure!");
        }

        List<Facility> facilities = this.facilityService.selectAllObject();
        List<FacilityType> facilityTypes = this.facilityService.selectFacilityType();
        List<RentType> rentTypes = this.facilityService.selectRentType();

        request.setAttribute("facilities", facilities);
        request.setAttribute("facilityTypes", facilityTypes);
        request.setAttribute("rentTypes", rentTypes);

        try {
            request.getRequestDispatcher("service/service.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createService(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("nameService");
        double area = Double.parseDouble(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentTypeId = Integer.parseInt(request.getParameter("rentType"));
        int facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));
        String standardRoom = request.getParameter("standardRoom");
        String descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
        double poolArea = 0;
        try {
            poolArea = Double.parseDouble(request.getParameter("poolArea"));
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        int numberOfFloors = 0;
        try {
            numberOfFloors = Integer.parseInt(request.getParameter("numberOfFloors"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        String facilityFree = request.getParameter("facilityFree");

        Facility facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom,
                descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree);

        request.setAttribute("mess", "Successfully added new!");

        if (!this.facilityService.insertObject(facility)) {
            request.setAttribute("mess", "Add new failure!");
        }

        List<Facility> facilities = this.facilityService.selectAllObject();
        List<FacilityType> facilityTypes = this.facilityService.selectFacilityType();
        List<RentType> rentTypes = this.facilityService.selectRentType();

        request.setAttribute("facilities", facilities);
        request.setAttribute("facilityTypes", facilityTypes);
        request.setAttribute("rentTypes", rentTypes);

        try {
            request.getRequestDispatcher("service/service.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
