package net.utility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBClose {
   public void close(Connection con) {       
        try{
            if(con != null){ con.close(); con = null; }
        }catch(Exception e){}
   }

   public void close(Connection con,PreparedStatement pstmt) {       
        try{
            if(pstmt != null){ pstmt.close(); pstmt = null; }
        }catch(Exception e){}

        try{
            if(con != null){ con.close(); con = null; }
        }catch(Exception e){}
   }
 
   public void close(Connection con,PreparedStatement pstmt,ResultSet rs) {
        try{
            if(rs != null){rs.close(); rs = null; }
        }catch(Exception e){}
        
        try{
            if(pstmt != null){ pstmt.close(); pstmt = null; }
        }catch(Exception e){}

        try{
            if(con != null){ con.close(); con = null; }
        }catch(Exception e){}  
    }
}
