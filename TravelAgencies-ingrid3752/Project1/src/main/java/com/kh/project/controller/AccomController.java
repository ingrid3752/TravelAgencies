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

    @GetMapping("/accomReservation")
    public String reservationList(Model model) {
        model.addAttribute("list", service.reservationList());
        return "accomReservation";
    }

    @GetMapping("/accomInsertReservation")
    public String insertReservationPage() {
        return "accomInsertReservation";
    }

    @PostMapping("/accomInsertReservation")
    public String accomInsertReservation(AccomReservation vo) {
        service.insertReservation(vo);
        return "redirect:/accomReservation";
    }
}
