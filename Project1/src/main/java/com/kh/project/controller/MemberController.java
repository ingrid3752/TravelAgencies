package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Member;
import com.kh.project.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 중복체크
	@ResponseBody
	@PostMapping("/check")
	public boolean check(String id) {
		System.out.println(id);
		return memberService.check(id);
	}
	
	// 로그인
	@PostMapping("/login")
	public String login(Member vo, HttpServletRequest request) {
		Member result = memberService.login(vo);
		if(result != null) {
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
	
	// 회원가입
	@PostMapping("/register")
	public String register(Member vo, HttpServletRequest request) {
	    try {
	        boolean isRegistered = memberService.register(vo);
	        if (isRegistered) {
	            return "redirect:/login"; // 회원가입 성공 후 로그인 페이지로 리다이렉트
	        } else {
	            request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
	            return "register"; // 실패 시 다시 회원가입 페이지로 이동
	        }
	    } catch (Exception e) {
	        request.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다: " + e.getMessage());
	        return "register"; // 예외 발생 시 다시 회원가입 페이지로 이동
	    }
	}
}
