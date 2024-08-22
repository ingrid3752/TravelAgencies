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
    
    // 로그인 후 메인 페이지로 이동
    @GetMapping("/login/success")
    public String loginSuccess() {
        return "index"; 
    }

    // 회원가입 후 로그인 페이지로 이동
    @GetMapping("/register/success")
    public String registerSuccess() {
        return "login"; 
    }
    
    // 식당 페이지로 이동
    @GetMapping("/rest")
    public String RestPage() {
        return "rest"; 
    }
	
    // 숙소 페이지로 이동
    @GetMapping("/accom")
    public String AccomPage() {
        return "accom"; 
    }

    // 굿즈 페이지로 이동
    @GetMapping("/goods")
    public String GoodsPage() {
        return "goods"; 
    }
    
    // 리뷰 페이지로 이동
    @GetMapping("/review")
    public String ReviewPage() {
    	return "review";
    }
    
    // 예약 페이지로 이동
    @GetMapping("/reservation")
    public String ReservationPage() {
    	return "reservation";
    }
    
    // 경기장 페이지로 이동
    @GetMapping("/stadium")
    public String StadiumPage() {
    	return "stadium";
    }
    
    // 농구 페이지로 이동
    @GetMapping("/basketball")
    public String BasketBallPage() {
    	return "basketball";
    }
    
}
