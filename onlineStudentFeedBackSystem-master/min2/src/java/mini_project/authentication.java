package mini_project;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class authentication {

    public int auth(String id,String pass,String type) throws ClassNotFoundException, SQLException{
     // if(type=="student")
     // {    
            Statement stmt=mysql.Mysql().createStatement();
            String sql="select * from ";
            if("student".equals(type))
            {
                   sql=sql+"student where student_id=? ";
            }else{
                     sql=sql+"faculty where faculty_id=? ";
                 }
             
            sql=sql+" and password=?";
            
           PreparedStatement psmt=mysql.Mysql().prepareStatement(sql);
           psmt.setString(1, id);
           psmt.setString(2, pass);
           ResultSet rs=psmt.executeQuery();
            if(rs.next())
            {   return 1;  
            }else{
                return 0; 
                 } 
      
      
      
      
      
}
}
