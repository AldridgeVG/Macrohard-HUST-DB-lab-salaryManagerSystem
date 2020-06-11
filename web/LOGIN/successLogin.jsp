<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
THE MOON SHINES THE NIGHT, <br>
AS -
<%
    String name = request.getParameter("username");
    out.print(name.toUpperCase());
%>
  - SHINES US! WELCOME TO MACROHARD!

<form action="../surface.jsp" method="post">
    <input type="submit" value="LOG OUT AND EXIT TO HOMEPAGE"/>
</form>

<form action="" method="post">
    <input type="submit" value="ENTER SYSTEM"/>
</form>

</body>
</html>