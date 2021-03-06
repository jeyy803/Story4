<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>


<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css"/>
</head>
<body>

<table>
	<tr class="label">
		<td>아이디
		<td>비밀번호
		<td>이름
		<td>가입일자
		<td>주소
		<td>전화번호

<% 
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		
		String sql = "select * from member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String name = rs.getString("name");
			Timestamp register = rs.getTimestamp("reg_date");
			String address = rs.getString("address");
			String tel = rs.getString("tel");
%>
		<tr>
			<td><%=id %>
			<td><%=passwd %>
			<td><%=name %>
			<td><%=register %>
			<td><%=address %>
			<td><%=tel %>
<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs!=null)try{rs.close();}catch(SQLException sqle){}
		if(pstmt!=null)try{pstmt.close();}catch(SQLException sqle){}
		if(conn!=null)try{conn.close();}catch(SQLException sqle){}
	}
%>
</body>
</html>