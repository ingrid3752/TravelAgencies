package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.kh.project.model.vo.AccomReservation;
import com.kh.project.service.AccomService;

@Controller
public class AccomController {
	
	@Autowired
	private AccomService service;
	
    // 숙소 예약현황리스트 보여주기
    @GetMapping("/accomReservation")
    public String reservationList(Model model) {
    	model.addAttribute("list", service.reservationList());
    	return "accomReservation";
    }
    // 예약 추가 페이지 이동
    @GetMapping("/accomInsertReservation")
    public String insertReservationPage() {
    	return "accomInsertReservation";
    }
    
    // 숙소 예약 추가
    @PostMapping("/accomInsertReservation")
    public String addReservation(AccomReservation vo) {
    	service.insertReservation(vo);
    	return "redirect:/accomReservation";
    }

}
