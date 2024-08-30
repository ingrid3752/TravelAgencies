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
	private AccomService service;
	
	// 숙소 페이지로 이동
    @GetMapping("/accom")
    public String AccomPage() {
        return "accom"; 
    }

}
