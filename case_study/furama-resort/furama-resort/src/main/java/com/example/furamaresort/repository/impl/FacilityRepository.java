package com.example.furamaresort.repository.impl;

import com.example.furamaresort.model.FacilityType;
import com.example.furamaresort.model.RentType;
import com.example.furamaresort.model.facility.Facility;
import com.example.furamaresort.repository.BaseRepository;
import com.example.furamaresort.repository.IRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IRepository<Facility> {
    @Override
    public boolean insertObject(Facility o) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO facility(name, " +
                    "area, cost, max_people, standard_room, description_other_convenience,\n" +
                    "                    pool_area, number_of_floors, facility_free, rent_type_id, facility_type_id)\n" +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            preparedStatement.setString(1,o.getName());
            preparedStatement.setDouble(2,o.getArea());
            preparedStatement.setDouble(3,o.getCost());
            preparedStatement.setInt(4,o.getMaxPeople());
            preparedStatement.setString(5,o.getStandardRoom());
            preparedStatement.setString(6,o.getDescriptionOtherConvenience());
            preparedStatement.setDouble(7,o.getPoolArea());
            preparedStatement.setInt(8,o.getNumberOfFloors());
            preparedStatement.setString(9,o.getFacilityFree());
            preparedStatement.setInt(10,o.getRentTypeId());
            preparedStatement.setInt(11,o.getFacilityTypeId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Facility> selectAllObject() {
        List<Facility> facilities = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT f.*, rt.name as rentType, " +
                    "ft.name as facilityType FROM facility f \n" +
                    "JOIN rent_type rt ON f.rent_type_id = rt.id \n" +
                    "JOIN facility_type ft ON f.facility_type_id = ft.id;");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                double area = resultSet.getDouble(3);
                double cost = resultSet.getDouble(4);
                int maxPeople = resultSet.getInt(5);
                int rentTypeId = resultSet.getInt(6);
                int facilityTypeId = resultSet.getInt(7);
                String standardRoom = resultSet.getString(8);
                String descriptionOtherConvenience = resultSet.getString(9);
                double poolArea = resultSet.getDouble(10);
                int numberOfFloors = resultSet.getInt(11);
                String facilityFree = resultSet.getString(12);
                String rentType = resultSet.getString(13);
                String facilityType = resultSet.getString(14);

                Facility facility = new Facility(id,name,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,
                        descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree,rentType,facilityType);
                facilities.add(facility);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilities;
    }

    @Override
    public boolean updateObject(Facility o) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE facility SET" +
                    " name = ?, area = ?, cost = ?, max_people = ?, rent_type_id = ?, " +
                    "facility_type_id = ?,standard_room = ?, description_other_convenience = ?," +
                    " pool_area = ?, number_of_floors = ?, facility_free = ? WHERE id = ?; ");
            preparedStatement.setString(1,o.getName());
            preparedStatement.setDouble(2,o.getArea());
            preparedStatement.setDouble(3,o.getCost());
            preparedStatement.setInt(4,o.getMaxPeople());
            preparedStatement.setInt(5,o.getRentTypeId());
            preparedStatement.setInt(6,o.getFacilityTypeId());
            preparedStatement.setString(7,o.getStandardRoom());
            preparedStatement.setString(8,o.getDescriptionOtherConvenience());
            preparedStatement.setDouble(9,o.getPoolArea());
            preparedStatement.setInt(10,o.getNumberOfFloors());
            preparedStatement.setString(11,o.getFacilityFree());
            preparedStatement.setInt(12,o.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteObject(int id) {
        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM facility WHERE id = ?;");
            preparedStatement.setInt(1,id);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Facility selectById(int id) {
        return null;
    }

    public List<FacilityType> selectFacilityType(){
        List<FacilityType> facilityTypes = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement =
                    connection.prepareStatement("SELECT * FROM furama_resort.facility_type;");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);

                FacilityType facilityType = new FacilityType(id,name);
                facilityTypes.add(facilityType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return facilityTypes;
    }

    public List<RentType> selectRentType(){
        List<RentType> rentTypes = new ArrayList<>();

        Connection connection = BaseRepository.getConnectionDatabase();

        try {
            PreparedStatement preparedStatement =
                    connection.prepareStatement("SELECT * FROM furama_resort.rent_type;");

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);

                RentType rentType = new RentType(id,name);
                rentTypes.add(rentType);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rentTypes;
    }
}
