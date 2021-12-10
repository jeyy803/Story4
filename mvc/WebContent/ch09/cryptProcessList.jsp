<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %>
<%@ page import = "ch09.update.UpdateDataBean" %>
<%@ page import = "ch09.update.UpdateDBBean" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css"/>

<%
	List<UpdateDataBean> memberList = null;
	UpdateDBBean dbPro = UpdateDBBean.getInstance();
	memberList = dbPro.getMembers();
%>
</head>
<body>

<table>
	<tr class="label">
		<td>아이디
		<td>비밀번호
	</tr>
<%
	for(int i=0; i<memberList.size(); i++){
		UpdateDataBean member = (UpdateDataBean)memberList.get(i);
		String id = member.getId();
		String passwd = member.getPasswd();
	
%>
	<tr>
		<td><%= id %>
		<td><%=passwd %>
<% } %>
	
</table>
</body>
</html>