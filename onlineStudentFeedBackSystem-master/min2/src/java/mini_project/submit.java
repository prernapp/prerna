package mini_project;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class submit {

    public int put(String sid,String cid,int sem,String year) throws ClassNotFoundException, SQLException{
        String sql="insert into submit values(?,?,?,?,?)";
        PreparedStatement psmt=mysql.Mysql().prepareStatement(sql);
        // sql date conversion 
            java.util.Date utilDate = new java.util.Date();
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
        // sql date till here 
        psmt.setString(1, sid);psmt.setString(2, cid);psmt.setDate(3, sqlDate ); psmt.setInt(4, sem);psmt.setString(5, year);
    int row=psmt.executeUpdate();
       if(row>0)
       {
           return 1;
       }else {  
                 return 0;
             }
       }
}
