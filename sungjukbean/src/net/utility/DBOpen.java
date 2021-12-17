package net.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBOpen {
  
  public Connection getConnection() {
    
    // 1)오라클 DB 연결
    String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
    String user="mvcdb";
    String password="12345";
    String driver="oracle.jdbc.driver.OracleDriver";
    
    Connection con=null;
    try {
      Class.forName(driver);
      con=DriverManager.getConnection(url, user, password);
      
    }catch(Exception e){
      System.out.println(e);
    }
    
    return con;
    
  }// end
}