<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>UserID:</td><td><input type="text" name="userID"/></td></tr>
        <tr><td>Username:</td><td><input type="text" name="userName"/></td></tr>
        <tr><td>Password:</td><td><input type="text" name="userPW"/></td></tr>
        <tr><td>Semester:</td><td><input type="int" name="userSemester"/></td></tr>
    </table>
    <tr><td><a href="list">목록 보기</a></td>
        <br>
        <td align="right"><input type="submit" value="ADD"/></td>
    </tr>
</form>

</body>
</html>