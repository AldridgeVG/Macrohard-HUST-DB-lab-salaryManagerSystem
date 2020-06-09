<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>$Title$</title>
</head>
<body>
<%
    String url = "Jdbc:mysql://localhost:3306/macrohard?useSSL=false&serverTimezone=UTC";
    String usr = "root";
    String pwd = "galland990531";

    ResultSet rs = null;
    Statement stmt = null;
    Connection connection = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); // load specific driver class
        //web import jar pack: copy into WEB-INF/lib
        connection = DriverManager.getConnection(url, usr, pwd);
        // execute: update/ browse
        stmt = connection.createStatement();
        String sql = "select mvalue from conntest order by mkey"; // query into sheet1

        rs = stmt.executeQuery(sql);
        while (rs.next()) {
            String tmp = rs.getString("mvalue");
            out.print(tmp + ", ");
        }

    } catch (SQLException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null)
                rs.close();
            if (stmt != null)
                stmt.close();
            if (connection != null)
                connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
