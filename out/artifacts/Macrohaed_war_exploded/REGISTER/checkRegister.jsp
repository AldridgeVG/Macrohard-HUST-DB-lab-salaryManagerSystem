<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="DAO.registerDao"%>
<%@ page import="java.util.List" %>
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

    registerDao RD = new registerDao();

    List<String> res = RD.register(usr, pwd);

    if (res != null)
        request.getRequestDispatcher("successRegister.jsp").forward(request, response);

    if (res == null)
        out.println("REGISTER FAILED, USERNAME EXISTED ?");
%>

<form action="../surface.jsp" method="post">
    <input type="submit" value="RETURN TO HOMEPAGE" />
</form>

</body>
</html>
