package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.mybatis.model.vo.Member;
import com.kh.project.model.vo.Mem_info;
import com.kh.project.service.Mem_info_Service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Mem_info_Controller {
	
	@Autowired
	private Mem_info_Service service;
	
	@GetMapping("/register")
	public String register() {
		return "mypage/register";
	}
	
	@PostMapping("/register")
	public String register(Mem_info vo) {
		service.register(vo);
		return "redirect:/";
	}
	
	@GetMapping("/login")
	public String login() {
		return "mypage/login";
	}
	
	@PostMapping("/login")
	public String login(Mem_info vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("vo", service.login(vo));
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Mem_info member = (Mem_info) session.getAttribute("vo");
		if(member!=null) session.invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/update")
	public String update(Mem_info vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Mem_info member = (Mem_info) session.getAttribute("vo");
		
		if(vo.getId()==null) vo.setId(member.getId());
		System.out.println(vo);
		service.update(vo);
		
		if(vo.getName()==null) vo.setName(member.getName());
		session.setAttribute("vo", vo);

		return "redirect:/";
	}

}
