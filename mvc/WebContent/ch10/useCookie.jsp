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
	Cookie[] cookies = request.getCookies();
	if(cookies!= null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
				out.println("쿠키 이름: " + cookies[i].getName());
				out.println(", 쿠키 값: " + cookies[i].getValue());
			}
		}
	}
%>
</body>
</html>