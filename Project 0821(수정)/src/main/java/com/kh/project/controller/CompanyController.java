//package com.kh.project.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.kh.project.model.vo.Company;
//import com.kh.project.service.CompanyService;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpSession;
//
//@Controller
//public class CompanyController {
//	
//	@Autowired
//	private CompanyService companyService;
//	
//	@ResponseBody
//	@PostMapping("/ComCheck")
//	public boolean check(String Comid) {
//		return companyService.check(Comid);
//	}
//
//	@PostMapping("/ComLogin")
//	public String login(Company vo,HttpServletRequest request ) {
//		Company result = companyService.login(vo);
//		if(result != null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("vo", result);
//			return "redirect:/";
//		}
//		return "ComLogin";
//	}
//	
//	@GetMapping("/ComLogout")
//	public String logout(HttpServletRequest request) {
//		HttpSession session = request.getSession();
//		session.invalidate();
//		return "redirect:/";
//	}
//	
//	@PostMapping("/ComSignUp")
//	public String signUp(Company vo, HttpServletRequest request) {
//		try {
//			boolean isRegistered = companyService.signUp(vo);
//			if(isRegistered) {
//				return "redirect:/ComLogin";
//			}else {
//				request.setAttribute("errorMessage", "회원가입에 실패했습니다. 다시 시도해주세요.");
//				return "ComSignUp";
//			}
//		} catch (Exception e) {
//			request.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다 : " + e.getMessage());
//			return "ComSignUp";
//		}
//	}
//	
//	
// 
//    @PostMapping("/ComUpdate")
//    public String update(Company vo, HttpServletRequest request) {
//        try {
//            HttpSession session = request.getSession();
//            Company currentCompany = (Company) session.getAttribute("vo");
//
//            if (currentCompany != null) {
//                vo.setComid(currentCompany.getComid()); 
//                vo.setComCode(currentCompany.getComCode()); 
//                boolean isUpdated = companyService.update(vo);
//
//                if (isUpdated) {
//                    session.setAttribute("vo", vo); 
//                    return "redirect:/"; 
//                } else {
//                    request.setAttribute("errorMessage", "회원정보 수정에 실패했습니다. 다시 시도해주세요.");
//                    return "ComUpdate"; 
//                }
//            } else {
//                return "redirect:/ComLogin"; 
//            }
//        } catch (Exception e) {
//            request.setAttribute("errorMessage", "회원정보 수정 중 오류가 발생했습니다: " + e.getMessage());
//            return "ComUpdate"; 
//    }
//}
//}