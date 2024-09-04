package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.model.vo.Member;
import com.kh.project.service.MemberService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private PasswordEncoder bcpe;
   
	
	
	// 중복체크
	@ResponseBody
	@PostMapping("/check")

	public boolean check(String id) {
		System.out.println(id);
		return memberService.check(id);
	}
	
	// 회원가입
	@PostMapping("/signUp")
	public String signUp(Member vo, HttpServletRequest request) {
	    try {
	    	// 회원(ROLE_MEMBER), 관리자(ROLE_ADMIN), 업체(ROLE_COMPANY) 
	    	vo.setRole("ROLE_MEMBER");
	        boolean isRegistered = memberService.signUp(vo);
	        if (isRegistered) {
	            return "redirect:/login"; // 회원가입 성공 후 로그인 페이지로 리다이렉트
	        } else {
	            request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
	            return "signUp"; // 실패 시 다시 회원가입 페이지로 이동
	        }
	    } catch (Exception e) {
	        request.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다: " + e.getMessage());
	        return "signUp"; // 예외 발생 시 다시 회원가입 페이지로 이동
	    }
	}
    
//	 회원정보수정 (아이디)
	  @PostMapping("/update")
	    public String update(Member vo, HttpServletRequest request, Model model) {
	        try {
	            // 현재 인증된 사용자의 정보를 가져옴
	            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	            
	                // 인증된 사용자의 정보를 얻음
	                Member mb = (Member) authentication.getPrincipal();
	                String username = mb.getUsername();
	                
	                // 현재 사용자의 ID로 회원 정보를 가져옴
	                UserDetails currentMember = memberService.loadUserByUsername(username);
	                
	                if (currentMember != null) {
	                	
	                	vo.setPassword(bcpe.encode(vo.getPassword()));
	                    vo.setId(currentMember.getUsername()); // 현재 사용자의 ID를 유지
	                    vo.setMemCode(((Member) currentMember).getMemCode()); // 고유 회원 코드 유지
	                    
	                    boolean isUpdated = memberService.update(vo);

	                    if (isUpdated) {
	                        // 업데이트된 정보를 다시 세션에 저장할 필요 없음 (SecurityContext가 유지함)
	                        return "redirect:/"; // 수정 성공 시 메인 페이지로 리다이렉트
	                    } else {
	                        model.addAttribute("errorMessage", "아이디 수정에 실패했습니다. 다시 시도해주세요.");
	                        return "update"; // 실패 시 다시 회원정보수정 페이지로 이동
	                    }
	                } else {
	                    return "redirect:/login"; // 사용자를 찾을 수 없을 경우 로그인 페이지로 리다이렉트
	                }
	        } catch (Exception e) {
	            model.addAttribute("errorMessage", "아이디 수정 중 오류가 발생했습니다: " + e.getMessage());
	            return "update"; // 예외 발생 시 다시 회원정보수정 페이지로 이동
        }
   }
    
}
