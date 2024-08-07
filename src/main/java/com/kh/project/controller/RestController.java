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

import com.kh.project.model.Rest;
import com.kh.project.service.RestService;

@Controller
@RequestMapping("/restaurants")
public class RestController {
    @Autowired
    private RestService restService;

    @GetMapping
    public List<Rest> findAll() {
        return restService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Rest> findById(@PathVariable Integer id) {
        Rest rest = restService.findById(id);
        if (rest != null) {
            return ResponseEntity.ok(rest);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public void save(@RequestBody Rest rest) {
        restService.save(rest);
    }

    @PutMapping("/{id}")
    public void update(@PathVariable Integer id, @RequestBody Rest rest) {
        rest.setRestCode(id);
        restService.update(rest);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Integer id) {
        restService.deleteById(id);
    }
}
