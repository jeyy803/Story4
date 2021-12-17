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
	String userID = null;
	if(session.getAttribute("userID")!=null){
		userID = (String)session.getAttribute("userID");
	}
%>
<nav>
<a>게시판</a>
<ul>
<li><a href="main.jsp">메인</a></li>
<li><a href="bbs.jsp">게시판</a></li>
</ul>
<%
	if(userID == null){
%>
<ul>
<li><a href="login.jsp">로그인</a></li>
<li><a href="join.jsp">회원가입</a></li>
</ul>
<%
	}else{
	
%>
<ul>
<li><a href="logout.jsp">로그아웃</a></li>
</ul>
<%
	}
%>
</nav>

<form action="writeAction.jsp" method="post">
	<table>
	<thead>
		<tr>
		<th colspan="2">게시판 글쓰기 양식</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><input type="text" placeholder="글제목" name="bbsTitle"></td>
		</tr>
		<tr>
		<td><textarea placeholder="글내용" name="bbsContent" style="height:350px;"></textarea>
		</tr>
	</tbody>
</table>
<input type="submit" value="글쓰기">
</form>

</body>
</html>