<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<%
    String usr = request.getParameter("username");
    String pwd = request.getParameter("password");
%>

REGISTER SUCCESSFUL !

BE AWARE, MAKE SURE YOU REMEMBER:
<br /> YOUR USERNAME: <%=usr%>
<br /> YOUR PASSWORD: <%=pwd%>
<br />

<form action="../surface.jsp" method="post">
    <input type="submit" value="EXIT TO HOMEPAGE AND LOG IN"/>
</form>

<form action="" method="post">
    <input type="submit" value="ENTER SYSTEM"/>
</form>

</body>
</html>