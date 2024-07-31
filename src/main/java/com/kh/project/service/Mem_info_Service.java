package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Mem_info;

import mapper.Mem_info_Mapper;

@Service
public class Mem_info_Service {
	
	@Autowired
	private Mem_info_Mapper memberMapper;
	
	public Mem_info_Service(Mem_info_Mapper memberMapper) {
		this.memberMapper = memberMapper;
	}
	
	public void register(Mem_info member) {
		memberMapper.register(member);
	}
}
