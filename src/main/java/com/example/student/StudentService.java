package com.example.student;

import com.example.student.bean.StudentVO;

import java.util.List;

public interface StudentService {
    public int insertStudent(StudentVO vo);
    public int deleteStudent(int seq);
    public int updateStudent(StudentVO vo);
    public StudentVO getStudent(int seq);
    public List<StudentVO> getStudentList();
}
