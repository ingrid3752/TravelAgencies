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
	
	// 숙소 예약 현황내역 보여주기
    public List<AccomReservation> reservationList(){
    	return mapper.reservationList();
    }
    
    // 숙소 예약 추가
    public void insertReservation(AccomReservation vo) {
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
    
    // 숙소 예약 취소
    public void deleteReservation(int reservationId) {
    	mapper.deleteReservation(reservationId);
    }
    
    // 모든 숙소 리스트 보여주기
	public List<Accom> AllAccom() {
		return mapper.AllAccom();
	}
}
