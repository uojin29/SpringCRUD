<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.student.dao.StudentDAO,com.example.student.bean.StudentVO"%>
<%@ page import="com.example.student.dao.StudentDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    StudentDAO studentDAO = new StudentDAO();
    String id = request.getParameter("id");
    StudentVO u=studentDAO.getStudent(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editpost.jsp" method="post" enctype="multipart/form-data">
    <input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
    <table>
        <tr><td>UserName:</td><td><input type="text" name="userName" value="<%= u.getUserName()%>"/></td></tr>
        <tr><td>UserID:</td><td><input type="text" name="userID" value="<%= u.getUserID()%>" /></td></tr>
        <tr><td>Password:</td><td><input type="text" name="userPW" value="<%= u.getUserPWD()%>"/></td></tr>
        <tr><td>Sesmeter:</td><td><input type="int" name="userSemeste" value="<%= u.getUserSemester()%>"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>