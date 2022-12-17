<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class="w3-content w3-margin-top" style="max-width:1400px;">
    <div class="banner">
        <div class="navbar w3-white w3-wide w3-padding w3-card-4 w3-round-xlarge">
            <a href="#" onclick="location.href='../list'" class="w3-tag w3-button w3-hover-none w3-white w3-xlarge w3-hover-text-blue w3-round-large" style="font-weight: bold;">
                한동 라운지 메뉴 리뷰</a>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 w3-margin-top w3-margin-bottom">
            <div class="w3-white w3-text-black w3-card-4 w3-round-large" style="width:100%; height: 100%;">
                <div class="w3-card-2 w3-round-large">
                    <div class="w3-container w3-black w3-round-large">
                        <h2>리뷰 수정</h2>
                    </div>

                    <form:form modelAttribute="u" class="w3-container" action="../editok" method="post">
                        <form:hidden path="seq"/>
                        <table id="edit" class="w3-margin-top">
                            <tr><td>Menu:</td><td>
                                <form:select path="category">
                                    <form:option value="짜장면" label="짜장면" />
                                    <form:option value="짬뽕" label="짬뽕" />
                                    <form:option value="찹쌀탕수육" label="찹쌀탕수육" />
                                    <form:option value="돼지국밥" label="돼지국밥" />
                                    <form:option value="해물순두부찌개" label="해물순두부찌개" />
                                    <form:option value="부대찌개" label="부대찌개" />
                                    <form:option value="치즈부대찌개" label="치즈부대찌개" />
                                    <form:option value="간장불고기덮밥" label="간장불고기덮밥" />
                                </form:select>
                            </td></tr>
                            <tr><td>Rating:</td><td>
                                <form:radiobutton path="rating" value="1" label="1"/>
                                <form:radiobutton path="rating" value="2" label="2"/>
                                <form:radiobutton path="rating" value="3" label="3"/>
                                <form:radiobutton path="rating" value="4" label="4"/>
                                <form:radiobutton path="rating" value="5" label="5"/>
                            </td></tr>
                            <tr><td>Semester:</td><td><form:input path="semester"/></td></tr>
                            <tr><td>Name:</td><td><form:input path="name"/></td></tr>
                            <tr><td>Review:</td><td><form:textarea cols="50" rows="5" path="content"/></td></tr>
                            <tr><td>Recommendation:</td><td>
                                <form:checkbox path="recommendation" value="추천!" label="추천!"/>
                                <form:checkbox path="recommendation" value="추천 X!" label="추천 X!"/>
                            </td></tr>
                        </table>
                        <button class="w3-btn w3-round-large w3-black w3-margin-top" type="submit">Edit</button>
                        <button class="w3-btn w3-round-large w3-black w3-margin-top w3-margin-left" onclick="history.back()" type="button">Cancel</button></p>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>