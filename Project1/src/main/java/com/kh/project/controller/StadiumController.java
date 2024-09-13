package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.project.model.vo.StadiumReservation;
import com.kh.project.service.StadiumService;

@Controller
public class StadiumController {
	
	@Autowired
	private StadiumService service;
	
	// 경기장 예약 추가
	@PostMapping("/stadium/insertReservation")
	public String insertReservation(Integer memCode, StadiumReservation vo) {
	    if (vo.getMemCode() == null) {
	        return "errorPage";
	    }
	    if (memCode == null) {
	        memCode = 1;
	    }
	    service.insertReservation(vo);
	    return "redirect:/hotelinfo";
	}

}
