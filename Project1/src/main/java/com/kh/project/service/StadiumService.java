package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.StadiumReservation;

import mapper.StadiumMapper;

@Service
public class StadiumService {
	
	@Autowired
	private StadiumMapper mapper;
	
	// 경기장 예약 목록 조회
    public List<StadiumReservation> reservationList(int memCode) {
    	return mapper.reservationList(memCode);
    }
    
    // 경기장 예약 추가
    public void insertReservation(StadiumReservation vo) {
    	mapper.insertReservation(vo);;
    }
    
    // 경기장 예약 저장
    public void saveReservation(StadiumReservation vo) {
    	mapper.insertReservation(vo);
    }
    
    // 경기장 예약 날짜 수정
    public void updateDate(StadiumReservation vo) {
    	mapper.updateDate(vo);
    }
}
