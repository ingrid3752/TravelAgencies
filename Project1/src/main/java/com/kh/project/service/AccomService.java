package com.kh.project.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.AccomReservation;

import mapper.AccomMapper;

@Service
public class AccomService {
	
	@Autowired
	private AccomMapper mapper;
	
	// 숙소 예약 목록 조회
    public List<AccomReservation> ReservationList(int memCode){
    	return mapper.ReservationList(memCode);
    }
    
    // 숙소 예약 추가
    public void insertReservation(AccomReservation vo) {
    	mapper.insertReservation(vo);
    }
    
    // 숙소 예약 저장
    public void saveReservation(AccomReservation vo) {
    	mapper.insertReservation(vo);
    }
    
    // 숙소 예약 처음 날짜 수정
    public void updateStartDate(AccomReservation vo) {
    	mapper.updateStartDate(vo);
    }
    
    // 숙소 예약 마지막 날짜 수정
    public void updateEndDate(AccomReservation vo) {
    	mapper.updateEndDate(vo);
    }
    
    // 숙소 예약 삭제
    public void deleteReservation(int reservationId) {
        mapper.deleteReservation(reservationId);
    }
    
    
    
}
