<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="DAO.loginDao"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String usr = request.getParameter("username");
    String pwd = request.getParameter("password");

    loginDao LD = new loginDao();

    int result = LD.login(usr, pwd);

    if (result > 0)
        request.getRequestDispatcher("successLogin.jsp").forward(request, response);

    if (result == 0)
        out.print("which one is INCORRECT? USERNAME OR PASSWORD ?");

    if (result < 0)
        out.print("OOPS! Seems there's a SYSTEM ERROR ~");
%>

<form action="../surface.jsp" method="post">
    <input type="submit" value="RETURN TO HOMEPAGE" />
</form>

</body>
</html>
