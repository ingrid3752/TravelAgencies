package com.kh.project.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.project.model.vo.Member;

@Controller
public class PageController {
	
//	  // 로그인 페이지 이동
//    @GetMapping("/login")
//    public String login() {
//        return "login"; 
//    }
//
    // 회원가입 페이지 이동
    @GetMapping("/signUp")
    public String signUp() {
        return "signUp"; 
    }
//    
//    // 회원정보수정 페이지 이동
//    @GetMapping("/update")
//    public String update() {
//    	return "redirect:/";
//    }
//    
//    // 마이페이지 이동
//    @GetMapping("/mypage")
//    public String mypage() {
//    	return "mypage";
//    }
//    
//    // 업체메인페이지 이동
//    @GetMapping("/ComIndex")
//    public String ComIndex() {
//    	return "ComIndex";
//    }
	@GetMapping("/")
	public String index() {
		return "index";
	}
    @GetMapping("/register")
	public String register() {
		return "register";
    }	
    @GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/member")
	public String member() {
		return "member";
	}

    @GetMapping("/admin")
	public String admin() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if(authentication!=null & authentication.isAuthenticated()) {
			Member member = (Member) authentication.getPrincipal();
			if(member.getRole().equals("ROLE_ADMIN")) {
				return "admin";
			}
		}

		return "redirect:/";
		
		
	}

//    @GetMapping("/company")
//   	public String company() {
//   		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//   		
//   		if(authentication!=null & authentication.isAuthenticated()) {
//   			Member member = (Member) authentication.getPrincipal();
//   			if(member.getRole().equals("ROLE_COMPANY")) {
//   				return "company";
//   			}
//   		}
//
//   		return "redirect:/";
//}
}
