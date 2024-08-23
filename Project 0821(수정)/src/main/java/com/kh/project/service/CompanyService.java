package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Company;

import mapper.CompanyMapper;

@Service
public class CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	public boolean check(String Comid) {
		Company vo = companyMapper.check(Comid);
		return vo!=null;
	}
	
	public Company login(Company vo) {
		return companyMapper.login(vo);
	}
	
	public boolean signUp(Company vo) {
		try {
			int result = companyMapper.signUp(vo);
			return result == 1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(Company vo) {
		try {
			int result = companyMapper.update(vo);
			return result > 0;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public void delete(int no) {
		companyMapper.delete(no);
	}
}

