package com.example.student.dao;

import com.example.student.bean.StudentVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class StudentDAO {
    @Autowired
    SqlSession sqlSession;

    public StudentVO getStudent(StudentVO vo) {
        return sqlSession.selectOne("Student.getStudent", vo);
    }
}
