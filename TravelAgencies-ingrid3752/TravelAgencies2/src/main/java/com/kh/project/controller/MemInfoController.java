package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.MemInfo;
import com.kh.project.service.MemInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemInfoController {
	
	@Autowired
	private MemInfoService memberService;
	
	// 중복체크
	@ResponseBody
	@PostMapping("/check")
	public boolean check(String id) {
		return memberService.check(id);
	}
	
	// 로그인
	@PostMapping("/login")
	public String login(MemInfo vo, HttpServletRequest request) {
		MemInfo result = memberService.login(vo);
		if(result!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("vo", result);
			return "redirect:/";
		}
		return "login";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	

	@GetMapping("/register")
	public String register() {
		return "redirect:/";
	}
	
}
