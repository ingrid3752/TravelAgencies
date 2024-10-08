package com.kh.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
			System.out.println("##############33");
			// 회원(ROLE_MEMBER), 관리자(ROLE_ADMIN), 업체(ROLE_COMPANY)
			String chk = vo.getRole();
			System.out.println(chk);
			if (chk.equals("member")) {
				vo.setRole("ROLE_MEMBER");
			} else {
				vo.setRole("ROLE_COMPANY");
			}
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

	// 회원정보수정 이름,전화번호,이메일(아이디)
	@PostMapping("/mypage/submit")
	public String up(Member vo, HttpServletRequest request, Model jmodel) {
		try {
			// 현재 인증된 사용자의 정보를 가져옴
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();

			// 인증된 사용자의 정보를 얻음
			Member mbc = (Member) auth.getPrincipal();
			String username = mbc.getUsername();

			// 현재 사용자의 ID로 회원 정보를 가져옴
			UserDetails curMember = memberService.loadUserByUsername(username);

			if (curMember != null) {
				// 이름, 이메일, 전화번호 업데이트
				vo.setId(curMember.getUsername()); // 현재 사용자의 ID 유지
				vo.setMemCode(((Member) curMember).getMemCode()); // 고유 회원 코드 유지
				vo.setName(vo.getName()); // 새로운 이름
				vo.setEmail(vo.getEmail()); // 새로운 이메일
				vo.setPhone(vo.getPhone()); // 새로운 전화번호

				boolean iUpdated = memberService.updateNPE(vo);

				if (iUpdated) {
					// 업데이트된 정보를 다시 세션에 저장할 필요 없음 (SecurityContext가 유지함)
					return "redirect:/"; // 수정 성공 시 메인 페이지로 리다이렉트
				} else {
					jmodel.addAttribute("errorMessage", "정보 수정에 실패했습니다. 다시 시도해주세요.");
					return "mypage"; // 실패 시 다시 회원정보수정 페이지로 이동
				}
			} else {
				return "redirect:/login"; // 사용자를 찾을 수 없을 경우 로그인 페이지로 리다이렉트
			}
		} catch (Exception e) {
			jmodel.addAttribute("errorMessage", "정보 수정 중 오류가 발생했습니다: " + e.getMessage());
			return "mypage"; // 예외 발생 시 다시 회원정보수정 페이지로 이동
		}
	}

	// 회원정보수정비밀번호변경 (아이디)
	@PostMapping("/mypage")
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

				boolean chkPwd = bcpe.matches(vo.getPwd(), currentMember.getPassword());

				if (!chkPwd) {
					model.addAttribute("errorMessage", "기존비밀번호가 틀렸습니다.");
					return "mypage";
				}else {
					model.addAttribute("errorMessage","");
				}

				vo.setPassword(bcpe.encode(vo.getPassword()));
				vo.setId(currentMember.getUsername()); // 현재 사용자의 ID를 유지
				vo.setMemCode(((Member) currentMember).getMemCode()); // 고유 회원 코드 유지

				boolean isUpdated = memberService.update(vo);

				if (isUpdated) {
					// 업데이트된 정보를 다시 세션에 저장할 필요 없음 (SecurityContext가 유지함)
					model.addAttribute("errorMessage", "회원정보가 변경 되었습니다.");
					return "redirect:/"; // 수정 성공 시 메인 페이지로 리다이렉트
				} else {
					model.addAttribute("errorMessage", "아이디 수정에 실패했습니다. 다시 시도해주세요.");
					return "mypage"; // 실패 시 다시 회원정보수정 페이지로 이동
				}
			} else {
				return "redirect:/login"; // 사용자를 찾을 수 없을 경우 로그인 페이지로 리다이렉트
			}
		} catch (Exception e) {
			model.addAttribute("errorMessage", "아이디 수정 중 오류가 발생했습니다: " + e.getMessage());
			return "mypage"; // 예외 발생 시 다시 회원정보수정 페이지로 이동
		}
	}

	
	
}
