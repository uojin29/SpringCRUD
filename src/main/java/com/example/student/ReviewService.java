package com.example.student;

import com.example.student.bean.ReviewVO;

import java.util.List;

public interface ReviewService {
    public int insertReview(ReviewVO vo);
    public int deleteReview(int seq);
    public int updateReview(ReviewVO vo);
    public ReviewVO getReview(int seq);
    public List<ReviewVO> getReviewList();
}
