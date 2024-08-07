package com.kh.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.project.model.ThemePark;
import com.kh.project.service.ThemeParkService;

@Controller
@RequestMapping("/theme-parks")
public class ThemeParkController {
    @Autowired
    private ThemeParkService themeParkService;

    @GetMapping
    public List<ThemePark> findAll() {
        return themeParkService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<ThemePark> findById(@PathVariable Integer id) {
        ThemePark themePark = themeParkService.findById(id);
        if (themePark != null) {
            return ResponseEntity.ok(themePark);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public void save(@RequestBody ThemePark themePark) {
        themeParkService.save(themePark);
    }

    @PutMapping("/{id}")
    public void update(@PathVariable Integer id, @RequestBody ThemePark themePark) {
        themePark.setThemeCode(id);
        themeParkService.update(themePark);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Integer id) {
        themeParkService.deleteById(id);
    }
}
