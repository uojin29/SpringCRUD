package com.example.student.controller;

import com.example.student.StudentServiceImpl;
import com.example.student.bean.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/list")
public class StudentController {
    @Autowired
    StudentServiceImpl studentService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String Studentlist(Model model){
        model.addAttribute("list", studentService.getStudentList());
        return "list";
    }
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "addpostform";
    }
    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(StudentVO vo){
        if(studentService.insertStudent(vo) == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        StudentVO studentVO = studentService.getStudent(id);
        model.addAttribute("u", studentVO);
        return  "editform";
    }
    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(StudentVO vo){
        if(studentService.updateStudent(vo) == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        if(studentService.deleteStudent(id) == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:../list";
    }
}
