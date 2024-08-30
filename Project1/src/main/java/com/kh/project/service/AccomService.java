package com.kh.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Accom;
import com.kh.project.model.vo.AccomFavorites;
import com.kh.project.model.vo.AccomReservation;

import mapper.AccomMapper;

@Service
public class AccomService {
	
	@Autowired
	private AccomMapper mapper;
	

    public List<AccomReservation> reservationList(AccomReservation vo){
    	return mapper.reservationList();
    }
    
    public void insertReservation(AccomReservation vo) {
    	mapper.insertReservation(vo);
    }
    
    public void updateStartDate(AccomReservation vo) {
    	mapper.updateStartDate(vo);
    }
    
    public void updateEndDate(AccomReservation vo) {
    	mapper.updateEndDate(vo);
    }
    
    public void deleteReservation(int reservationId) {
    	mapper.deleteReservation(reservationId);
    }
}
