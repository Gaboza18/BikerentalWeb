
<%@page contentType="text/html" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/tr/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>로그인</title>
        <link href="bootstrap.css" type="text/css" rel="stylesheet">
        <script language="javascript">

            function go() {
                if (document.login.id.value == "") {
                    alert("아이디를 입력해 주세요!");
                    document.login.id.focus();
                } else if (document.login.pw.value == "") {
                    alert("비밀번호를 입력해 주세요!");
                    document.login.pw.focus();
                } else {
                    document.login.action = "log_in2.jsp";
                    document.login.submit();
                }

            }
        </script>

    </head>
    <body><br><br><br><br><br>
    <center><h1>관리자 로그인</h1></center>
    <br><br>
    <form name="login" action="log_in2.jsp" method="get" class="w3-container">
        <table align="center">
            <tr>
                <th align="right">ID:</th>
                <td><input type="text" name="id" size="13"</td>
                <td rowspan=2><input type="button" value="Login" onclick="go()"></td>
            </tr>
            <tr>
                <th align="right">Password:</th>
                <td><input type="password" name="pw" size="13"></td>

            </tr>

        </table>
    </form>

</body>
</html>
