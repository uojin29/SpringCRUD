<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #e6e6e6;}
        #list tr:hover {background-color: #e6e6e6;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: black;
            color: white;
        }
        body{
            background-color: #e6e6e6;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<div class="w3-content w3-margin-top" style="max-width:1400px;">
    <div class="banner">
        <div class="navbar w3-white w3-wide w3-padding w3-card-4 w3-round-xlarge">
            <a href="#" onclick="location.href='list'" class="w3-tag w3-button w3-hover-none w3-white w3-xlarge w3-hover-text-blue w3-round-large" style="font-weight: bold;">
                한동 라운지 메뉴 리뷰</a>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 w3-margin-top w3-margin-bottom">
            <div class="w3-white w3-text-grey w3-card-4 w3-round-large" style="width:100%; height: 100%;">
                <p>
                        <span class="w3-margin-left w3-margin-top w3-xlarge w3-padding w3-round-large w3-center">
                        </span>
                </p>
                <table id="list">
                    <tr>
                        <th>Menu</th>
                        <th>Rating</th>
                        <th>Review</th>
                        <th>Semester</th>
                        <th>Name</th>
                        <th>Recommendation</th>
                        <th>Edit</th>
                        <th>Edit-date</th>
                        <th>Delete</th>
                    </tr>

                    <c:forEach items="${list}" var="u">
                        <tr>
                            <td>${u.getCategory()}</td>
                            <td>${u.getRating()}</td>
                            <td>${u.getContent()}
                            <td>${u.getSemester()}</td>
                            <td>${u.getName()}</td>
                            <td>${u.getRecommendation()}</td>
                            <td><a href="editform/${u.getSeq()}">Edit</a></td>
                            <td>${u.getEditdate()}</td>
                            <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
                <p><button class="w3-btn w3-round-large w3-black w3-margin-top w3-margin-left" onclick="location.href='add'">Add New Review</button>
                    <button class="w3-btn w3-round-large w3-black w3-margin-top w3-margin-left" onclick="location.href='login/logout'">Logout</button></p>
            </div>
        </div>
    </div>
</div>
</body>
</html>