package com.kh.project.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.MemInfo;

@Mapper
public interface MemInfoMapper {
	
	MemInfo check(String id);
	MemInfo login(MemInfo vo);
	MemInfo register(MemInfo vo);
}
