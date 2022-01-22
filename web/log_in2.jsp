<%-- 
    Document   : log_in2
    Created on : 2018. 6. 5, 오전 12:41:55
    Author     : temp
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="bikerental.*, bikerentalBean.*, bikerentalDao.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    request.setCharacterEncoding("EUC-KR");
    Manager_informationDao M_iDao = new Manager_informationDao();
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    List listID = M_iDao.LoginManager(id, pw);

    Iterator a = listID.iterator();

    while (a.hasNext()) {
        Manager_informationBean M_ibean = (Manager_informationBean) a.next();
        int NUMBER = M_ibean.getNUMBER();

        String msg = "";

        if (NUMBER == 1) {
            session.setAttribute("sessionid", id);
            msg = "Manager.jsp";
        } else if (NUMBER == 0) {
            msg = "Manager_WebPage.jsp?msg=0";
        } else {
            msg = "Manager_WebPage.jsp?msg=0";
        }
        response.sendRedirect(msg);
    }
%>


