package com.kh.project.controller;

import java.util.Date;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.kh.project.model.vo.AccomReservation;
import com.kh.project.model.vo.Member;
import com.kh.project.service.AccomService;
import com.kh.project.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AccomController {

    @Autowired
    private AccomService service;
    
    @Autowired
    private MemberService memberService;

    /*
     * PathVariable?
     * 경로 변수를 표시하기 위해 메서드에 매개변수에 사용
     * 경로 변수? ex) {id} 
     * 경로 변수는 반드시 값을 가져야 하며, 값이 없는 경우에는 404 오류가 발생한다.
     * */
    

    // 숙소 예약 페이지 리스트 출력
    @GetMapping("/accomReservation")
    public String accomReservationPage(HttpServletRequest request, Integer memCode, Model model) {
        
        // 사용자 인증 정보 가져오기
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = (Member) authentication.getPrincipal();
        String role = member.getRole();
        
        // 세션에서 memCode 가져오기
        HttpSession session = request.getSession();
        Integer sessionMemCode = (Integer) session.getAttribute("memCode");
        
        // memCode가 null일 경우 기본값 설정
        if (memCode == null) {
            memCode = sessionMemCode != null ? sessionMemCode : 1;
        }

        // comPage: 기업 사용자의 경우
        if (role.equals("ROLE_COMPANY")) {
            List<AccomReservation> AR = service.ReservationList(memCode);
            if (AR == null || AR.isEmpty()) {
                model.addAttribute("message", "예약 목록이 없습니다");
            } else {
                model.addAttribute("accomReservationList", AR);
            }
            return "compage";
        }

        // memberMypage: 일반 사용자의 경우
        if (role.equals("ROLE_MEMBER")) {
            List<AccomReservation> AR = service.ReservationList(memCode);
            if (AR == null || AR.isEmpty()) {
                model.addAttribute("message", "예약 목록이 없습니다");
            } else {
                model.addAttribute("accomReservationList", AR);
            }
            return "accomReservation";
        }

        // adPage: 관리자 페이지
        List<Member> members = memberService.memberList(memCode);
        if (members == null || members.isEmpty()) {
            model.addAttribute("message", "회원 목록이 없습니다");
        } else {
            model.addAttribute("memberList", members);
        }

        List<AccomReservation> AR = service.ReservationList(memCode);
        if (AR == null || AR.isEmpty()) {
            model.addAttribute("message", "예약 목록이 없습니다");
        } else {
            model.addAttribute("accomReservationList", AR);
        }
        System.out.println("22 : " + members);
        return "adpage";
    }


    // 숙소 예약 추가 페이지로 이동
    @GetMapping("/accomInsertReservation")
    public String insertReservationPage() {
        return "accomInsertReservation";
    }

    // 숙소 예약 추가
    @PostMapping("/accom/insertReservation")
    public String insertReservation(Integer memCode, AccomReservation vo) {
    	if(vo.getMemCode() == null) {
    		return "errorPage";
    	}
    	if (memCode == null) {
    		memCode = 1;
    	}
    	service.insertReservation(vo);
    	return "redirect:/accomReservation/" + vo.getMemCode();
    }
    
    // 예약 후 돌아와서 리스트 보여주기
    @GetMapping("/accomReservation/{memCode}")
    public String reservationList(@PathVariable("memCode")int memCode,Model model) {
    	List<AccomReservation> AR = service.ReservationList(memCode);
    	if(AR == null || AR.isEmpty()) {
    		model.addAttribute("message", "예약된 숙소가 없습니다");
    	} else {
    		model.addAttribute("reservation", AR);
    	}
    	System.out.println(model);
    	return "accomReservation";
    }
    
    // 시작 날짜 수정
    @PostMapping("/accom/updateStartDate")
    public String updateStartDate(int reservationId, int memCode, @DateTimeFormat(pattern = "yyyy-MM-dd") Date startDate, int seats) {
    	AccomReservation vo = new AccomReservation();
    	vo.setReservationId(reservationId);
    	vo.setMemCode(memCode);
    	vo.setStartDate(startDate);
    	vo.setSeats(seats);
    	
    	service.updateStartDate(vo);
    	return "redirect:/accomReservation/" + memCode;
    }
    
    // 마지막 날짜 수정
    @PostMapping("/accom/updateEndDate")
    public String updateEndDate(int reservationId, int memCode, @DateTimeFormat(pattern = "yyyy-MM-dd") Date endDate, int seats) {
    	AccomReservation vo = new AccomReservation();
    	vo.setReservationId(reservationId);
    	vo.setMemCode(memCode);
    	vo.setEndDate(endDate);
    	vo.setSeats(seats);
    	
    	service.updateEndDate(vo);
    	return "redirect:/accomReservation/" + memCode;
    }
    
    // 숙소 예약 삭제
    @PostMapping("/deleteReservation")
    public String deleteReservation(Integer reservationId) {
    	if (reservationId == null) {
    		reservationId = 1;
    	}
    	
    	System.out.println("RI : " + reservationId);
        service.deleteReservation(reservationId);
        return "redirect:/accomReservation";
    }
    
    
    
}
