package mini_project;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class mysql {

    public static Connection Mysql() throws ClassNotFoundException, SQLException{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project", "root", "");
    
   return conn;
    }
}
