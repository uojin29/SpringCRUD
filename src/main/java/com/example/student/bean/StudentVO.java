package com.example.student.bean;

public class StudentVO {
    private int seq;
    private String userID;
    private String userName;
    private String userPW;
    private int userSemester;

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPW() {
        return userPW;
    }

    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }

    public int getUserSemester() {
        return userSemester;
    }

    public void setUserSemester(int userSemester) {
        this.userSemester = userSemester;
    }
}
