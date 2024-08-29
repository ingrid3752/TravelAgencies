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
	private AccomMapper accomMapper;
	
	// 즐겨찾기 목록 조회
    public List<Accom> getFavorites(int memId) {
        AccomFavorites accomFavorites = new AccomFavorites();
        accomFavorites.setMemId(memId);
        return accomMapper.getFavorites(accomFavorites);
    }

    // 즐겨찾기 추가
    public void addFavorite(int memId, int accomId) {
        AccomFavorites accomFavorites = new AccomFavorites();
        accomFavorites.setMemId(memId);
        accomFavorites.setAccomId(accomId);
        accomMapper.insertFavorite(accomFavorites);
    }

    // 즐겨찾기 삭제
    public void removeFavorite(int memId, int accomId) {
        AccomFavorites accomFavorites = new AccomFavorites();
        accomFavorites.setMemId(memId);
        accomFavorites.setAccomId(accomId);
        accomMapper.deleteFavorite(accomFavorites);
    }

    // 숙소 예약 추가
    public void addReservation(AccomReservation reservation) {
        accomMapper.insertReservation(reservation);
    }

    // 예약 내역 조회
    public List<AccomReservation> getReservationsByMember(int memId) {
        AccomReservation accomReservation = new AccomReservation();
        accomReservation.setMemId(memId);
        return accomMapper.getReservationsByMember(accomReservation);
    }

    // 예약 내역 변경
    public void modifyReservation(AccomReservation reservation) {
        accomMapper.updateReservation(reservation);
    }

    // 예약 내역 삭제
    public void cancelReservation(int reservationId, int memId) {
        AccomReservation accomReservation = new AccomReservation();
        accomReservation.setReservationId(reservationId);
        accomReservation.setMemId(memId);
        accomMapper.deleteReservation(accomReservation);
    }
}
