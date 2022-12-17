<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<script type="text/javascript">
    function clickCheck(chk){
        var obj = document.getElementsByName("recommendation");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != chk){
                obj[i].checked = false;
            }
        }
    }
</script>
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
            <div class="w3-white w3-text-black w3-card-4 w3-round-large" style="width:100%; height: 100%;">
                <div class="w3-card-2 w3-round-large">
                    <div class="w3-container w3-black w3-round-large">
                        <h2>리뷰 작성</h2>
                    </div>
                    <form class="w3-container" action="addok" method="post">
                        <table id="edit" class="w3-margin-top">
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
                            <tr><td>Semester:</td><td><input type="text" name="semester"/></td></tr>
                            <tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
                            <tr><td>Review:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
                            <tr><td>Recommendation:</td>
                                <td>
                                    <input name="recommendation" type="checkbox" value="추천!" onclick="clickCheck(this);">추천!
                                    <input name="recommendation" type="checkbox" value="추천 X!" onclick="clickCheck(this);">추천 X!
                                </td>
                            </tr>
                        </table>
                        <button class="w3-btn w3-round-large w3-black w3-margin-top" type="submit">ADD</button>
                        <button class="w3-btn w3-round-large w3-black w3-margin-top w3-margin-left" onclick="location.href='./list'" type="button">View List</button></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>