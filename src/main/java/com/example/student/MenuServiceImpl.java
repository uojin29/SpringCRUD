package com.example.student;


import com.example.student.bean.MenuVO;
import com.example.student.dao.MenuDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService{
    @Autowired
    MenuDAO menuDAO;

    @Override
    public int insertMenu(MenuVO vo){
        return menuDAO.insertMenu(vo);
    }
    @Override
    public int deleteMenu(int seq){
        return menuDAO.deleteMenu(seq);
    }
    @Override
    public int updateMenu(MenuVO vo){
        return menuDAO.updateMenu(vo);
    }
    @Override
    public MenuVO getMenu(int seq){
        return menuDAO.getMenu(seq);
    }
    @Override
    public List<MenuVO> getMenuList(){
        return menuDAO.getMenuList();
    }
}
