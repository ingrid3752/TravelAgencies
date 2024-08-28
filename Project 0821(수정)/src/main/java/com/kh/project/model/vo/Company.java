//package com.kh.project.model.vo;
//
//import java.util.ArrayList;
//import java.util.Collection;
//
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//@Data @NoArgsConstructor @AllArgsConstructor @Builder
//public class Company {
//	
//	private int ComCode;
//	private String Comid;
//	private String Compassword;
//	private String Comname;
//	private String Comphone;
//	private String Comrole;
//
//	@Override
//	public Collection<? extends GrantedAuthority> getAuthorities() {
//		ArrayList<GrantedAuthority> authList = new ArrayList<>();
//		authList.add(new SimpleGrantedAuthority(Comrole));
//		return authList;
//	}
//	
//	@Override
//	public String getUsername() {
//		return id;
//	}
//}