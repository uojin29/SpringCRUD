package com.example.student.dao;

import com.example.student.bean.StudentVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class StudentDAO {
    @Autowired
    private JdbcTemplate template;
    public void setTemplate(JdbcTemplate template){
        this.template = template;
    }

    private final String STUDENT_INSERT = "insert into STUDENT (userID, userName, userPW, userSemester) values (?, ?, ?, ?)";
    private final String STUDENT_UPDATE = "update STUDENT set userID=?, userName=?, userPW=?, userSemester=?, where seq=?";
    private final String STUDENT_DELETE = "delete from STUDENT  where seq=?";
    private final String STUDENT_GET = "select * from STUDENT  where seq=?";
    private final String STUDENT_LIST = "select * from STUDENT order by seq desc";

    public int insertStudent(StudentVO vo){
        return template.update(STUDENT_INSERT, new Object[]{vo.getUserID(), vo.getUserName(), vo.getUserPWD(), vo.getUserSemester()});
    }
    public int deleteStudent(int id){
        return template.update(STUDENT_DELETE, new Object[]{id});
    }
    public int updateStudent(StudentVO vo){
        return template.update(STUDENT_INSERT, new Object[]{vo.getUserID(), vo.getUserName(), vo.getUserPWD(), vo.getUserSemester(), vo.getSeq()});
    }

   public StudentVO getStudent(int seq){
        return template.queryForObject(STUDENT_GET, new StudentRowMapper());
   }
   public List<StudentVO> getStudentList(){
        return template.query(STUDENT_LIST, new StudentRowMapper());
   }

   class StudentRowMapper implements RowMapper<StudentVO>{
       @Override
       public StudentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
           StudentVO vo = new StudentVO();
           vo.setSeq(rs.getInt("seq"));
           vo.setUserID(rs.getString("userID"));
           vo.setUserName(rs.getString("userName"));
           vo.setUserPWD(rs.getInt("uwerPWD"));
           vo.setUserSemester(rs.getInt("userSemester"));
           return vo;
       }
   }
}
