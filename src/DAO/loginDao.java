package DAO;

import java.sql.*;

public class loginDao {

    //this LoginDAO is a JAVABEAN
    //----simplify .JSP file
    //----can be repeatedly used and moved

    public int login(String usr1,String pwd1) {

        //RETURN 1----------LOGIN SUCCESS
        //RETURN 0----------LOGIN FAILED
        //RETURN -1---------SYSTEM ERROR

        String url = "Jdbc:mysql://localhost:3306/macrohard?useSSL=false&serverTimezone=UTC";
        String usr = "root";
        String pwd = "galland990531";

        //request.setCharacterEncoding("UTF-8");
        //String name = request.getParameter("username");
        //String pwd = request.getParameter("password");

        Statement stmt = null;
        Connection connection = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // load specific driver class
            connection = DriverManager.getConnection(url,usr,pwd);

            // execute: update/ browse
            stmt = connection.createStatement();
            String sql = "select musername,mpassword from users"; // query into sheet1
            rs = stmt.executeQuery(sql); // return result set
            int count = 0;

            // result set is a sheet that contains the data that was in query
            // to get data from result set. pointer rs points to former line of result set
            // next(): 1.move pointer to next line 2.is null(contain data?)? t/f return
            // boolean
            // rs.getXXX(): get data from current line that rs points to
            // getString/getInt...

            while (rs.next()) {
                String usr2 = rs.getString("musername");
                String pwd2 = rs.getString("mpassword");
                if (usr2.equals(usr1) && pwd2.equals(pwd1)) {

                    //response.sendRedirect("success.jsp");	//REDIRECT RESULTS IN DATA LOSE
                    //request.getRequestDispatcher("success.jsp").forward(request, response);
                    //requset dispatch---can save data, page don't change to success

                    count = 1;
                    return count;
                } else {
                    continue;
                }
            }

            return count;
            //out.print("Login Failed, please register or check your username and password");

        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
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
    }
}
