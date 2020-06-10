<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="check2.jsp" method="post">
    用户名：<input type="text" name="username"/><br/>
    密 码：<input type="text" name="password"/><br/>
    <input type="submit" value="登录"/>
</form>

<form action="../index2.jsp" method="post">
    <input type="submit" value="返回"/>
</form>

</body>
</html>