package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.mapper.ThemeParkMapper;
import com.kh.project.model.ThemePark;

@Service
public class ThemeParkService {
	@Autowired
	private ThemeParkMapper themeParkMapper;

    public List<ThemePark> findAll() {
        return themeParkMapper.findAll();
    }

    public ThemePark findById(Integer id) {
        return themeParkMapper.findById(id);
    }

    public void save(ThemePark themePark) {
        themeParkMapper.save(themePark);
    }

    public void update(ThemePark themePark) {
        themeParkMapper.update(themePark);
    }

    public void deleteById(Integer id) {
        themeParkMapper.deleteById(id);
    }
}
