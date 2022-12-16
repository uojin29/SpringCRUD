package com.example.student.dao;

import com.example.student.bean.ReviewVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ReviewDAO {
    @Autowired
    SqlSession sqlSession;

    public int insertReview(ReviewVO vo) {
        int result = sqlSession.insert("Review.insertReview", vo);
        return result;
    }
    public int deleteReview(int id){
        return sqlSession.delete("Review.deleteReview", id);
    }
    public int updateReview(ReviewVO vo) {
        int result = sqlSession.update("Review.updateReview", vo);
        return result;
    }
    public ReviewVO getReview(int seq) {
        ReviewVO one = sqlSession.selectOne("Review.getReview", seq);
        return one;
    }
    public List<ReviewVO> getReviewList(){
        List<ReviewVO> list = sqlSession.selectList("Review.getReviewList");
        return list;
    }
}
