<%-- 
    Document   : BikeManagement
    Created on : 2018. 5. 1, 오전 2:22:57
    Author     : temp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>searchbikemanagement</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>자전거 관리소 검색</h1>
        </div>
        <form action="BikeManagementInformation.jsp" method="get" class ="w3-container">
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>수리가 필요한 자전거 관리소를 찾아드립니다 대여소 이름을 입력해 주세요.</b></label>
                <input class="w3-input w3-border" type="text"placeholder="ex)마두역 7번 출구" name="Address"></p>

            <p>
            <div class="w3-container w3-center">
                <button class="w3-btn w3-blue w3-center">검색</button></p>
            </div>





        </form>
    </body>
</html>