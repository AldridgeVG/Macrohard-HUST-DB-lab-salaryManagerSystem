<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="DAO.testQueryDao"%>
<%@ page import="java.util.*" %>
<html>
<head>
    <title> testDAO </title>
</head>
<body>
    <%
        testQueryDao tqd = new testQueryDao();
        List<String> rs = tqd.query();

        /*
        //-----test query
        Iterator<String> itea = rs.iterator();
        while(itea.hasNext()){
            out.println(itea.next());
        }
        */

        request.setAttribute("rslist", rs);
    %>

    <br>
    <c:forEach items="${requestScope.rslist}" var="keyword" varStatus="id">
        ${id.index} ${keyword}<br>
    </c:forEach>
    <br>



</body>
</html>
