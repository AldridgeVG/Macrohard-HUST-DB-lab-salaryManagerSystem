package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class registerDao {

    public static List<String> register(String usr1, String pwd1) {

        String url = "Jdbc:mysql://localhost:3306/macrohard?useSSL=false&serverTimezone=UTC";
        String usr = "root";
        String pwd = "galland990531";

        ResultSet rs = null;
        Statement stmt = null;
        Connection connection = null;

        List<String> ret = null;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver"); // load specific driver class
            connection = DriverManager.getConnection(url, usr, pwd);

            stmt = connection.createStatement();
            String sql1 = "select musername from users"; // query into sheet1

            rs = stmt.executeQuery(sql1);

            while (rs.next()) {
                String usr2 = rs.getString("musername");
                if (usr2.equals(usr1)) {
                    return ret;
                } else {
                    continue;
                }
            }

            //if username doesnot exist in current DB, create id

            String sql = "insert into users values('" + usr1 + "','" + pwd1 + "')";
            // String sql= "update SHEET1 set ANS='3' where QUESTION='1+2'";
            // String sql = "delete from SHEET1 where LEV='3'";
            int count = stmt.executeUpdate(sql);// COUNT means the number of rows been changed in db
            if(count>0){
                ret = new ArrayList<>();
                ret.add(usr1);
                ret.add(pwd1);
                return ret;
            }

        } catch (
                SQLException e) {
            e.printStackTrace();
        } catch (
                Exception e) {
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
        return null;
    }
}
