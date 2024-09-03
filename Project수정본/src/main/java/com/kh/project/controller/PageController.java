package com.kh.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

	// 로그인 페이지 이동
    @GetMapping("/login")
    public String login() {
        return "login"; /*application.properties prefix = /WEB-INF/ suffix= .jsp*/
    }

    // 회원가입 페이지 이동
    @GetMapping("/signUp")
    public String signUp() {
        return "signUp"; 
    }
    
    // 회원정보수정 (아이디) 페이지 이동
    @GetMapping("/update")
    public String update() {
    	return "update";
    }
    // 회원정보 수정후 메인페이지로 이동
//    @GetMapping("/update/success")
//    	public String updateSuccess() {
//    		return "index";
//    	}
    
    
    // 마이페이지 이동
    @GetMapping("/mypage")
    public String mypage() {
    	return "mypage";
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
    
    // 리뷰 작성 페이지로 이동
    @GetMapping("/reviewForm")
    public String ReviewFormPage(Model model) {
    	model.addAttribute("memCode", 1);
    	return "reviewForm";
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
    
    // 배드민턴 페이지로 이동
    @GetMapping("/badminton")
    public String BadmintonPage() {
    	return "badminton";
    }
    
    // 펜싱 페이지로 이동
    @GetMapping("/fencing")
    public String FencingPage() {
    	return "fencing";
    }
    
    // 리듬체조 페이지로 이동
    @GetMapping("/gymnastics")
    public String GymnasticsPage() {
    	return "gymnastics";
    }
    
    // 사격 페이지로 이동
    @GetMapping("/shooting")
    public String ShootingPage() {
    	return "shooting";
    }
    
    // 서핑 페이지로 이동
    @GetMapping("/surfing")
    public String SurfingPage() {
    	return "surfing";
    }
    
    // 태권도 페이지로 이동
    @GetMapping("/taekwondo")
    public String TaekwondoPage() {
    	return "taekwondo";
    }
    
    // 테니스 페이지로 이동
    @GetMapping("/tennis")
    public String TennisPage() {
    	return "tennis";
    }
    
    // 르 호텔 페이지로 이동
    @GetMapping("/lehotel")
    public String LehotelPage() {
    	return "lehotel";
    }
    
    // 슈 호텔 페이지로 이동
    @GetMapping("/shuhotel")
    public String shuhotelPage() {
    	return "shuhotel";
    }
    
    // 데 호텔 페이지로 이동
    @GetMapping("/dehotel")
    public String dehotelPage() {
    	return "dehotel";
    }
    
    // 한식 페이지로 이동
    @GetMapping("/korea")
    public String KoreaPage() {
    	return "korea";
    }
    
    // 일식 페이지로 이동
    @GetMapping("/japan")
    public String JapanPage() {
    	return "japan";
    }
    
    // 중식 페이지로 이동
    @GetMapping("/china")
    public String ChinaPage() {
    	return "china";
    }
    
    // 양식 페이지로 이동
    @GetMapping("/france")
    public String FrancePage() {
    	return "france";
    }
    
    // info 페이지
    @GetMapping("/info")
    public String InfoPage() {
    	return "info";
    }
    
    // hotelinfo 페이지
    @GetMapping("/hotelinfo")
    public String HotelInfoPage() {
    	return "hotelinfo";
    }
    
    // ticketinfo 페이지
    @GetMapping("/ticketinfo")
    public String TicketInfoPage() {
    	return "ticketinfo";
    }
    
}
