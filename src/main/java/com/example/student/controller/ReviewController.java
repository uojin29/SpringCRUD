package com.example.student.controller;

import com.example.student.ReviewServiceImpl;
import com.example.student.bean.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {
    @Autowired
    ReviewServiceImpl reviewService;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("list", reviewService.getReviewList());
        return "list";
    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String reviewlist(Model model){
        model.addAttribute("list", reviewService.getReviewList());
        return "list";
    }
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "add";
    }
    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(ReviewVO vo){
        int i = reviewService.insertReview(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        ReviewVO reviewVO = reviewService.getReview(id);
        model.addAttribute("u", reviewVO);
        return  "editform";
    }
    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(ReviewVO vo){
        int i = reviewService.updateReview(vo);
        if(i == 0){
            System.out.println("데이터 수정 실패");
        }
        else System.out.println("데이터 수정 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        int i = reviewService.deleteReview(id);
        if(i == 0){
            System.out.println("데이터 삭제 실패");
        }
        else System.out.println("데이터 삭제 성공");
        return "redirect:../list";
    }
}
