package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.config.TokenProvider;
import com.kh.project.model.vo.Member;
import com.kh.project.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private TokenProvider tokenProvider;
	
	@PostMapping("/signUp")
	public String signUp(Member vo) {
		
		service.signUp(vo);
		
		return "redirect:/login";
	}
	
	@ResponseBody
	@PostMapping("/login")
	public String login(Member vo) {
		Member member = service.login(vo);
		if(member!=null) {
			// 로그인 성공! -> 세션에 값을 담기 (서버에 고객 정보 임시 저장)
			//            -> 토큰 생성해서 부여 (서버는 토큰 생성만, 가지고 있는 건 클라이언트)
			String token = tokenProvider.create(member);
			return token;
		}
		return null;
	}

}