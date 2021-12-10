<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<link rel="stylesheet" href="style.css"/>

<table>
  <tr  class="label">
     <td>아이디
     <td>비밀번호
     <td>이름
     <td>가입일자
     <td>주소
     <td>전화번호
  
<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;

  try{
    String jdbcUrl="jdbc:oracle:thin:@127.0.0.1:1521:xe";
     String dbId="mvcdb";
     String dbPass="12345";
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

    String sql= "select * from member";
    pstmt=conn.prepareStatement(sql);
    rs=pstmt.executeQuery();

    while(rs.next()){
      String id= rs.getString("id");
       String passwd= rs.getString("passwd");
       String name= rs.getString("name");
       Timestamp register=rs.getTimestamp("reg_date");
       String address= rs.getString("address");
       String tel= rs.getString("tel");
%>
       <tr>
          <td><%=id%>
          <td><%=passwd%>
          <td><%=name%>
          <td><%=register.toString()%>
          <td><%=address%>
          <td><%=tel%>
<%  } 
  }catch(Exception e){ 
    e.printStackTrace();
  }finally{
    if(rs != null) 
       try{rs.close();}catch(SQLException sqle){}
    if(pstmt != null) 
      try{pstmt.close();}catch(SQLException sqle){}
    if(conn != null) 
      try{conn.close();}catch(SQLException sqle){}
  }
%>
</table>