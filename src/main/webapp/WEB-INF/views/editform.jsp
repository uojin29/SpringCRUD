<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="com.example.student.dao.StudentDAO,com.example.student.bean.StudentVO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<h1>Edit Form</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>메뉴:</td><td><select name="category">
            <option value="">없음</option>
            <option value="짜장면">짜장면</option>
            <option value="짬뽕">짬뽕</option>
            <option value="찹쌀탕수육">찹쌀탕수육</option>
            <option value="돼지국밥">돼지국밥</option>
            <option value="해물순두부찌개">해물순두부찌개</option>
            <option value="부대찌개">부대찌개</option>
            <option value="치즈부대찌개">치즈부대찌개</option>
            <option value="간장불고기덮밥">간장불고기덮밥</option>
        </select></td></tr>
        <tr><td>Rating:</td><td><form:input path="rating"/></td></tr>
        <tr><td>Review:</td><td><form:textarea cols="50" rows="5" path="review"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form:form>

</body>
</html>