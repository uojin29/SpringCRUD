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
    JdbcTemplate template;
    public void setTemplate(JdbcTemplate template){
        this.template = template;
    }

    private final String STUDENT_INSERT = "insert into STUDENT (userID, userName, userPW, userSemester) values (?, ?, ?, ?)";
    private final String STUDENT_UPDATE = "update STUDENT set userID=?, userName=?, userPW=?, userSemester=?, where seq=?";
    private final String STUDENT_DELETE = "delete from STUDENT  where seq=?";
    private final String STUDENT_GET = "select * from STUDENT  where seq=?";
    private final String STUDENT_LIST = "select * from STUDENT order by seq desc";

    public int insertStudent(StudentVO vo){
        return template.update(STUDENT_INSERT, new Object[]{vo.getUserID(), vo.getUserName(), vo.getUserPW(), vo.getUserSemester()});
    }
    public int deleteStudent(int id){
        return template.update(STUDENT_DELETE, new Object[]{id});
    }
    public int updateStudent(StudentVO vo){
        return template.update(STUDENT_UPDATE,
                new Object[]{vo.getUserID(), vo.getUserName(), vo.getUserPW(), vo.getUserSemester(), vo.getSeq()});
    }

   public StudentVO getStudent(int seq){
        return template.queryForObject(STUDENT_GET,
                new Object[]{seq},
                new BeanPropertyRowMapper<StudentVO>(StudentVO.class));
   }
    public List<StudentVO> getStudentList(){
        return template.query(STUDENT_LIST, new RowMapper<StudentVO>() {
            @Override
            public StudentVO mapRow(ResultSet rs, int rowNum) throws SQLException {
                StudentVO data = new StudentVO();
                data.setSeq(rs.getInt("seq"));
                data.setUserID(rs.getString("userID"));
                data.setUserName(rs.getString("userName"));
                data.setUserPW(rs.getString("userPW"));
                data.setUserSemester(rs.getInt("userSemester"));
                return data;
            }
        });
    }
}
