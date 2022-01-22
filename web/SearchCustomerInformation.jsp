
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>고객 정보 검색 결과</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div class="w3-container w3-blue w3-center">
            <h1>검색하신 고객님의 정보입니다.</h1>
        </div>
        <TABLE class="w3-table table w3-striped w3-bordered" BORDER='0' width='600' cellpadding='0' cellspacing='0'>
            <TR>
                <td>고객이름</td>
                <td>휴대폰번호</td>
                <td>나이</td>

            </TR>
            <%
                CustomerInformationDao CustomerInforDao = new CustomerInformationDao();
                String Socialsecuritynumber = request.getParameter("Information");
                System.out.println(Socialsecuritynumber);
                List listCustomer = CustomerInforDao.listCustomerInformation(Socialsecuritynumber);
                Iterator b = listCustomer.iterator();

                while (b.hasNext()) {
                    CustomerInformationBean CIBbean = (CustomerInformationBean) b.next();
                    String CUSTOMER = CIBbean.getCUSTOMER();
                    String SOCIALSECURITYNUMBER = CIBbean.getSOCIALSECURITYNUMBER();
                    String AGE = CIBbean.getAGE();
                    System.out.println(CUSTOMER);


            %>
            <TR>
                <TD><%=CUSTOMER%></TD>                                                        
                <TD><%=SOCIALSECURITYNUMBER%></TD>
                <TD><%=AGE%></TD>
            </TR>
            <%
                }
            %>
        </TABLE>
    </body>
</html>
