package com.kh.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Accom;
import com.kh.project.model.vo.AccomReservation;
import com.kh.project.service.AccomService;

@Controller
@RequestMapping("/accom")
public class AccomController {

	@Autowired
	private AccomService accomService;
	 // 즐겨찾기 목록 조회
    @GetMapping("/favorites")
    @ResponseBody
    public List<Accom> getFavorites(int memId) {
        return accomService.getFavorites(memId);
    }

    // 즐겨찾기 추가
    @PostMapping("/favorites")
    @ResponseBody
    public void addFavorite(int memId, int accomId) {
        accomService.addFavorite(memId, accomId);
    }

    // 즐겨찾기 삭제
    @DeleteMapping("/favorites")
    @ResponseBody
    public void removeFavorite(int memId, int accomId) {
        accomService.removeFavorite(memId, accomId);
    }

    // 숙소 예약 추가
    @PostMapping("/reservation")
    @ResponseBody
    public void addReservation(@RequestBody AccomReservation reservation) {
        accomService.addReservation(reservation);
    }

    // 예약 내역 조회
    @GetMapping("/reservations")
    @ResponseBody
    public List<AccomReservation> getReservationsByMember(int memId) {
        return accomService.getReservationsByMember(memId);
    }

    // 예약 내역 변경
    @PutMapping("/reservation")
    @ResponseBody
    public void modifyReservation(@RequestBody AccomReservation reservation) {
        accomService.modifyReservation(reservation);
    }

    // 예약 내역 삭제
    @DeleteMapping("/reservation")
    @ResponseBody
    public void cancelReservation(int reservationId, int memId) {
        accomService.cancelReservation(reservationId, memId);
    }
}