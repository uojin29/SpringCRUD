package com.example.student.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {
    @RequestMapping("list")
    public String list(){
        System.out.println("request list");
        return "/list";
    }
}
