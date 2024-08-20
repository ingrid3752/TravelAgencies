package com.kh.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

	  // 로그인 페이지 이동
    @GetMapping("/login")
    public String login() {
        return "login"; 
    }

    // 회원가입 페이지 이동
    @GetMapping("/signUp")
    public String signUp() {
        return "signUp"; 
    }
    
    // 회원정보수정 페이지 이동
    @GetMapping("/update")
    public String update() {
    	return "redirect:/";
    }
    
    // 마이페이지 이동
    @GetMapping("/mypage")
    public String mypage() {
    	return "mypage";
    }
	
}
