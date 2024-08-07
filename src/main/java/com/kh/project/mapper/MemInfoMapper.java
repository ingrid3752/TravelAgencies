package com.kh.project.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.MemInfo;

@Mapper
public interface MemInfoMapper {
	void register(MemInfo member);
	MemInfo login(MemInfo member);
	void update(MemInfo member);
	
}
