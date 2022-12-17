<%--
  Created by IntelliJ IDEA.
  User: jang-yujin
  Date: 2022/12/07
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <meta charset="UTF-8">
    <style>
        body{
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: #f7f7f7;
            padding: 0 10px;
        }
        .wrapper{
            background: #fff;
            max-width: 450px;
            width: 100%;
            border-radius: 16px;
            box-shadow: 0 0 128px 0 rgba(0,0,0,0.1),
            0 32px 64px -48px rgba(0,0,0,0.5);
        }

        .form{
            padding: 25px 30px;
        }
        .form header{
            font-size: 25px;
            font-weight: 600;
            padding-bottom: 10px;
            border-bottom: 1px solid #e6e6e6;
        }
        .form form .field{
            display: flex;
            margin-bottom: 10px;
            flex-direction: column;
            position: relative;
        }
        .form form {
            margin: 20px 0;
        }
        .form form .field label{
            margin-bottom: 2px;
        }
        .form form .input input{
            height: 40px;
            width: 100%;
            font-size: 16px;
            padding: 0 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .form form .button input{
            height: 45px;
            border: none;
            color: #fff;
            font-size: 18px;
            background: #333;
            border-radius: 5px;
            margin-top: 13px;
        }
    </style>
</head>
<body>
<div class="wrapper">
    <section class="form signup">
        <header>한동대 라운지 메뉴 리뷰</header>
        <form method="post" action="loginOk">
            <div class="field input">
                <label>Userid</label>
                <input type="text" name="userID">
            </div>
            <div class="field input">
                <label>Password</label>
                <input type="password" name="userPW">
                <i class="fas fa-eye"></i>
            </div>
            <div class="field button">
                <input type="submit" value="로그인">
            </div>
        </form>
    </section>
</div>
</body>
</html>