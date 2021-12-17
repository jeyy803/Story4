<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="ch10.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	LogonDBBean logon= LogonDBBean.getInstance();
	int check = logon.userCheck(id,passwd);
	if(check ==1){
		session.setAttribute("id",id);
		response.sendRedirect("sessionLogin.jsp");
	}else if(check == 0){
%>
	<script>
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1);
	</script>		
		
<% 		
	}else if(check == -1){	
%>
	<script>
		alert("존재하지 않는 아이디입니다.");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>