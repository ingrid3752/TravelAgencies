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


    // 예약 리스트 가져오기
    @GetMapping("/accomReservation")
    public String getAccomReservationList(Model model) {
        model.addAttribute("accomList", service.reservationList()); 
        System.out.println(model);
        return "accomReservation"; 
    }

    // 숙소 예약 추가 페이지로 이동
    @GetMapping("/accomInsertReservation")
    public String insertReservationPage(Model model) {
        model.addAttribute("accomCode", 1);  
        model.addAttribute("memCode", 1);   
        return "accomInsertReservation";
    }

    // 예약 작성
    @PostMapping("/accomInsertReservation")
    public String insertReservation(AccomReservation vo) {
        service.insertReservation(vo);
        return "redirect:/accomReservation";
    }
    
    // 예약 삭제
    @PostMapping("/deleteReservation")
    public String deleteReservation(int reservationId) {
        service.deleteReservation(reservationId);
        return "redirect:/accomReservation";
    }
    
    
    
}
