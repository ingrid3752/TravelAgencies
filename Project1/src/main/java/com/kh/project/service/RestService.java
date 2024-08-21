package com.kh.project.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import mapper.RestMapper;

@Service
public class RestService {
	
	@Autowired
	private RestMapper restMapper;
	
	
}
