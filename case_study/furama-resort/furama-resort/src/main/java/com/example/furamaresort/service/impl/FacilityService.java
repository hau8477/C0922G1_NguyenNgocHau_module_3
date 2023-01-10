package com.example.furamaresort.service.impl;

import com.example.furamaresort.model.FacilityType;
import com.example.furamaresort.model.RentType;
import com.example.furamaresort.model.facility.Facility;
import com.example.furamaresort.repository.impl.FacilityRepository;
import com.example.furamaresort.service.IService;

import java.util.List;

public class FacilityService implements IService<Facility> {
    private final FacilityRepository facilityRepository = new FacilityRepository();
    @Override
    public boolean insertObject(Facility o) {
        return this.facilityRepository.insertObject(o);
    }

    @Override
    public List<Facility> selectAllObject() {
        return this.facilityRepository.selectAllObject();
    }

    @Override
    public boolean updateObject(Facility o) {
        return this.facilityRepository.updateObject(o);
    }

    @Override
    public boolean deleteObject(int id) {
        return this.facilityRepository.deleteObject(id);
    }

    @Override
    public Facility selectById(int id) {
        return this.facilityRepository.selectById(id);
    }

    public List<FacilityType> selectFacilityType(){
        return this.facilityRepository.selectFacilityType();
    }

    public List<RentType> selectRentType(){
        return this.facilityRepository.selectRentType();
    }
}
