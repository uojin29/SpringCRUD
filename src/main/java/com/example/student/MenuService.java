package com.example.student;

import com.example.student.bean.MenuVO;

import java.util.List;

public interface MenuService {
    public int insertMenu(MenuVO vo);
    public int deleteMenu(int seq);
    public int updateMenu(MenuVO vo);
    public MenuVO getMenu(int seq);
    public List<MenuVO> getMenuList();
}
