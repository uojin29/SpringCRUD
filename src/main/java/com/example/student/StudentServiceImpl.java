package com.example.student;

import com.example.student.bean.StudentVO;
import com.example.student.dao.StudentDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl{
    @Autowired
    StudentDAO studentDAO;
    public StudentVO getStudent(StudentVO vo){
        return studentDAO.getStudent(vo);
    }
}
