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
        <tr><td>UserID:</td><td><form:input path="userID"/></td></tr>
        <tr><td>UserName:</td><td><form:input path="userName"/></td></tr>
        <tr><td>Password:</td><td><form:input path="userPW"/></td></tr>
        <tr><td>Semester:</td><td><form:input path="userSemester"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form:form>

</body>
</html>