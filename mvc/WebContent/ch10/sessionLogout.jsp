<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	session.invalidate();
%>

<script>
	alert("로그아웃 되었습니다.");
	location.href="sessionLogin.jsp";
</script>
</body>
</html>