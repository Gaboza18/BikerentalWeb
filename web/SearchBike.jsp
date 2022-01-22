<%-- 
    Document   : SearchBike
    Created on : 2018. 1. 3, 오전 12:15:17
    Author     : temp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>searchbike</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>자전거 대여소 검색</h1>
        </div>
        <form action="SearchBikeInformation.jsp" method="get" class ="w3-container">
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>1.찾고싶은 자전거 대여소의 지역 이름을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder="ex)대구,경기도" name="Address"></p>

            <p>
            <div class="w3-container w3-center">
                  <button class="w3-btn w3-blue w3-center">검색</button></p>
            </div>
                

            
               
                
       </form>
    </body>
</html>
