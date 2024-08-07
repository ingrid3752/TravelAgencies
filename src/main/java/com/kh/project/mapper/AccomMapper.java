package com.kh.project.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.Accom;

@Mapper
public interface AccomMapper {
    List<Accom> findAll();
    Accom findById(Integer accomCode);
    void save(Accom accom);
    void update(Accom accom);
    void deleteById(Integer accomCode);
}
