<%-- 
    Document   : UpdateCustomer
    Created on : 2018. 1. 3, 오전 12:14:40
    Author     : temp
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>UpdateCustomer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>고객정보 수정</h1>
        </div>
        <form action="UpdateCustomerInformation.jsp" method="get" class ="w3-container">
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>1.수정할  고객님의 이름을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="이름을 정확하게 입력해 주세요." name="Name"></p>
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>2.수정하고 싶은 고객님의 이름을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder ="이름을 정확하게 입력해 주세요." name="UpdateName"></p>

            <p>
            <div class="w3-container w3-center">
                <button class="w3-btn w3-blue w3-center">수정</button></p>
            </div>


        </form>
    </body>
</html>
