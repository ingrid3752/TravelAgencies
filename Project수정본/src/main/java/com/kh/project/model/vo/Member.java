package com.kh.project.model.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Member implements UserDetails {
	
	private int memCode;
	private String id;
	private String pwd; // 기존패스워드
	private String password;
	private String name;
	private String phone;
	private String role; // 회원(ROLE_MEMBER), 관리자(ROLE_ADMIN), 업체(ROLE_COMPANY) 
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authList = new ArrayList<>();
		authList.add(new SimpleGrantedAuthority(role));
		return authList;
	}
	
	@Override
	public String getUsername() {
		return id;
	}
}