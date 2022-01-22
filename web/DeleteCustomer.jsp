<%-- 
    Document   : DeleteCustomer
    Created on : 2018. 1. 3, 오전 12:13:58
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
        <title>JSP Page</title>
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>고객정보 삭제</h1>
        </div>
        <form action="DeleteCustomerInformation.jsp" method="get" class ="w3-container">
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>1.삭제하고 싶은 고객님의 이름을 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder="정확한 이름을 입력해 주세요." name="Name"></p>
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>2.삭제하고 싶은 고객님의 전화번호를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text" placeholder="xxx-xxxx-xxxx 형태로 입력해 주세요."name="Number"></p>
            <p style ="font-size :30px">
                <label class="w3-text-blue"><b>3.삭제하고 싶은 고객님의 나이를 입력 해주세요.</b></label>
                <input class="w3-input w3-border" type="text"placeholder="정확한 나이를 입력해 주세요" name="Age"></p>
            <p>
            <div class="w3-container w3-center">
                   <button class="w3-btn w3-blue w3-center">삭제</button></p>
            </div>
               

        </form>
    </body>
</html>
