package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.mapper.MemInfoMapper;
import com.kh.project.model.MemInfo;

@Service
public class MemInfoService {
	
	@Autowired
	private MemInfoMapper member;
	
	public boolean check(String id) {
		MemInfo vo = member.check(id);
		if(vo != null) return true;
		return false;
	}
	
	public MemInfo login(MemInfo vo) {
		return member.login(vo);
	}
	
	public void register(MemInfo vo) {
		member.register(vo);
	}
}
