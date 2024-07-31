package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Mem_info;

import mapper.Mem_info_Mapper;

@Service
public class Mem_info_Service {
	
	@Autowired
	private Mem_info_Mapper mapper;
	
	public Mem_info_Service(Mem_info_Mapper memberMapper) {
		this.mapper = memberMapper;
	}
	
	public void register(Mem_info member) {
		mapper.register(member);
	}
	
	public Mem_info login(Mem_info member) {
		return mapper.login(member);
	}
	
	public void update(Mem_info member) {
		mapper.update(member);
	}
}
