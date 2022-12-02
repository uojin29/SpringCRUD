package com.example.review.student;

public class StudentVO {
    private int ID;
    private String userID;
    private String userName;
    private int userPWD;
    private int userSemester;
    private int cnt;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
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

    public int getUserPWD() {
        return userPWD;
    }

    public void setUserPWD(int userPWD) {
        this.userPWD = userPWD;
    }

    public int getUserSemester() {
        return userSemester;
    }

    public void setUserSemester(int userSemester) {
        this.userSemester = userSemester;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }
}
