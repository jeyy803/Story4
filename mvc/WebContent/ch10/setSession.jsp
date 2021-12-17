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
	String id = "kingdora@kings.com";
	String passwd = "12345";
	
	session.setAttribute("passwd",passwd);
	session.setAttribute("id",id);
	
	out.println("세션에 id와 passwd 속성을 설정했습니다.<br>");
%>

<form method="post" action="viewSession.jsp">
	<table>
		<tr>
			<td><input type="submit" value="세션 속성 확인"></td>
		</tr>
	</table>
</form>
</body>
</html>