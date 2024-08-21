package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Member;
import mapper.MemberMapper;

@Service
public class MemberService {

	@Autowired
	private MemberMapper mapper;
	
	private BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
	
	public void register(Member vo) {
		
		vo.setPassword(bcpe.encode(vo.getPassword()));
		vo.setRole("ROLE_MEMBER");
		
		mapper.register(vo);
	}
	
	public Member login(Member vo) {
		
		Member member = mapper.login(vo.getId());
		
		
		if(member!=null && bcpe.matches(vo.getPassword(), member.getPassword())) {
			
			return member;
		}
		
		return null;
	}

}