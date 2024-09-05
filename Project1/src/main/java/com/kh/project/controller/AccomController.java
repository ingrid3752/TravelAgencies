package com.kh.project.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.project.model.vo.AccomReservation;
import com.kh.project.service.AccomService;

@Controller
public class AccomController {

    @Autowired
    private AccomService service;

    /*
     * PathVariable?
     * 경로 변수를 표시하기 위해 메서드에 매개변수에 사용
     * 경로 변수? ex) {id} 
     * 경로 변수는 반드시 값을 가져야 하며, 값이 없는 경우에는 404 오류가 발생한다.
     * */
    
    // 숙소 예약 페이지 리스트 출력
    @GetMapping("/accomReservation")
    public String accomReservationPage(Integer memCode, Model model) {
    	if (memCode == null) {
    		memCode = 1;
    	}
    	model.addAttribute("accomReservationList" , service.ReservationList(memCode));
    	System.out.println(model);
    	return "accomReservation";
    }

    // 숙소 예약 추가 페이지로 이동
    @GetMapping("/accomInsertReservation")
    public String insertReservationPage() {
        return "accomInsertReservation";
    }

    // 숙소 예약 추가
    @PostMapping("/accom/addReservation")
    public String addReservation(AccomReservation vo) {
    	service.addReservation(vo);
    	return "redirect:/accomReservation/" + vo.getMemCode();
    }
    
    // 시작 날짜 수정
    @PostMapping("/accom/updateStartDate")
    public String updateStartDate(int reservationId, int memCode, @DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate, int seats) {
    	AccomReservation vo = new AccomReservation();
    	vo.setReservationId(reservationId);
    	vo.setMemCode(memCode);
    	vo.setStartDate(startDate);
    	vo.setSeats(seats);
    	
    	service.updateStartDate(vo);
    	return "redirect:/accomReservation/" + memCode;
    }
    
    // 마지막 날짜 수정
    @PostMapping("/accom/updateEndDate")
    public String updateEndDate(int reservationId, int memCode, @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate, int seats) {
    	AccomReservation vo = new AccomReservation();
    	vo.setReservationId(reservationId);
    	vo.setMemCode(memCode);
    	vo.setEndDate(endDate);
    	vo.setSeats(seats);
    	
    	service.updateEndDate(vo);
    	return "redirect:/accomReservation/" + memCode;
    }
    
    // 숙소 예약 삭제
    @PostMapping("/accom/deleteReservation")
    public String deleteReservation(int reservationId, int memCode) {
        service.deleteReservation(reservationId, memCode);
        return "redirect:/accomReservation/" + memCode;
    }
    
    
    
}
