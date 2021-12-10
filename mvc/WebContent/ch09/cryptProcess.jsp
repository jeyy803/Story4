<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import = "ch09.update.UpdateDataBean" %>
<%@ page import = "ch09.update.UpdateDBBean" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<h3>암호화 전 내용</h3>
<jsp:include page="cryptProcessList.jsp" flush="false"/>

<%
	UpdateDBBean dbPro = UpdateDBBean.getInstance();
	dbPro.updateMember();
%>
<h3>암호화가 적용된 후 내용</h3>
<jsp:include page = "cryptProcessList.jsp" flush="false"/>
</body>
</html>