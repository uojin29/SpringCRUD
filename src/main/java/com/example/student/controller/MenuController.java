package com.example.student.controller;

import com.example.student.MenuServiceImpl;
import com.example.student.bean.MenuVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
    @Autowired
    MenuServiceImpl menuService;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("list", menuService.getMenuList());
        return "list";
    }
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String Menulist(Model model){
        model.addAttribute("list", menuService.getMenuList());
        return "list";
    }
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost(){
        return "add";
    }
    @RequestMapping(value = "/addok", method = RequestMethod.POST)
    public String addPostOK(MenuVO vo){
        int i = menuService.insertMenu(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        MenuVO menuVO = menuService.getMenu(id);
        model.addAttribute("u", menuVO);
        return  "editform";
    }
    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOK(MenuVO vo){
        int i = menuService.updateMenu(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:list";
    }
    @RequestMapping(value = "/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOK(@PathVariable("id") int id){
        int i = menuService.deleteMenu(id);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }
        else System.out.println("데이터 추가 성공");
        return "redirect:../list";
    }
}
