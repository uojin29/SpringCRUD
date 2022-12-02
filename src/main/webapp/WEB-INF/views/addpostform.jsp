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
<form action="addpost.jsp" method="post" enctype="multipart/form-data">
    <table>
        <tr><td>UserID:</td><td><input type="text" name="userID"/></td></tr>
        <tr><td>Username:</td><td><input type="text" name="userName"/></td></tr>
        <tr><td>Password:</td><td><input type="text" name="userPW"/></td></tr>
        <tr><td>Gender:</td><td><input type="text" name="userSemester"/></td></tr>
        <tr><td><a href="list.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>