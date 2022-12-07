package com.example.student.controller;

import com.example.student.StudentServiceImpl;
import com.example.student.bean.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
@RequestMapping(value="/login")
public class StudentController {
    @Autowired
    StudentServiceImpl service;
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value="/loginOk",method=RequestMethod.POST)
    public String loginCheck(HttpSession session, StudentVO vo){
        String returnURL = "";
        if (session.getAttribute("login") != null ){
        session.removeAttribute("login");
    }
    StudentVO loginvo = service.getStudent(vo);
        if ( loginvo != null ){
            // 로그인성공
            System.out.println("로그인성공!");
            session.setAttribute("login", loginvo);
            returnURL = "redirect:/list";
        }else {
            // 로그인실패
//            alert(returnURL, "로그인실패");
            System.out.println("로그인실패!");
            returnURL = "redirect:/login/login";
        }return returnURL;
    }
    // 로그아웃하는부분
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return"redirect:/login/login";
    }

    public static void alert(HttpServletResponse response, String msg) {
        try {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter w = response.getWriter();
            w.write("<script>alert('"+msg+"');</script>");
            w.flush();
            w.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
