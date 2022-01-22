<%-- 
    Document   : ManagerBikeInsertMode
    Created on : 2018. 5. 13, 오후 8:22:34
    Author     : temp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>InesertCustomer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>자전거 대여소 정보 추가</h1>
        </div>

        <form action="ManagerBikeRegister.jsp" method="get" class ="w3-container">
            <p>
                <label class="w3-text-blue"><b>1.ID를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="정확한 ID를 입력해주세요." name="ID"></p>
            <p>
                <label class="w3-text-blue"><b>2.대여소 이름을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="정확한 대여소 이름을 입력해주세요." name="Bikerentalname"></p>
            <p>
                <label class="w3-text-blue"><b>3.도로명 주소를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="정확한 도로명 주소를 입력 해주세요." name="Roadaddress"></p>
            <p>
                <label class="w3-text-blue"><b>4.지번 주소를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="정확한 지번 주소를 입력 해주세요." name="Numberaddress"></p>
            <p> 
                <label class="w3-text-blue"><b>5.위도를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="ex)00.000 형식으로 입력 해주세요." name="Latitude"></p>
            <p> 
                <label class="w3-text-blue"><b>6.경도를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="ex)00.000 형식으로 입력 해주세요." name="Hardness"></p>
            <p> 
                <label class="w3-text-blue"><b>7.시작시간을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="ex)00:00 형식으로 입력 해주세요." name="Starttime"></p>
            <p> 
                <label class="w3-text-blue"><b>8.종료시간을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="ex)00:00 형식으로 입력 해주세요."name="Finishtime"></p>
            <p> 
                <label class="w3-text-blue"><b>9.자전거 개수를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="정확한 개수를 입력해주세요." name="Bikecount"></p>
            <p> 
            <div class="w3-container w3-center">
                <button class="w3-btn w3-blue w3-center">등록</button></p>

            </div>



        </form>
    </body>
</html>
