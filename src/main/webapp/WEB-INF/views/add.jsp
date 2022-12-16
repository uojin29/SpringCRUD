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
        <tr><td>Rating:</td>
            <td>
            <input type="radio" id="rating1" name="rating" value="1" checked> 1
            <input type="radio" id="rating2" name="rating" value="2"> 2
            <input type="radio" id="rating3" name="rating" value="3"> 3
            <input type="radio" id="rating4" name="rating" value="4"> 4
            <input type="radio" id="rating15" name="rating" value="5"> 5
        </td></tr>
        <tr><td>Photo:</td><td><input type="file" name="photo"/></td></tr>
        <tr><td>Semester:</td><td><input type="text" name="semester"/></td></tr>
        <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
        <tr><td>Review:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <tr><td><a href="list">목록 보기</a></td>
        <br>
        <td align="right"><input type="submit" value="ADD"/></td>
    </tr>
</form>

</body>
</html>