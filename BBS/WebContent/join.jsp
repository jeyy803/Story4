<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<nav>
<a>게시판</a>
<ul>
<li><a href="main.jsp">메인</a></li>
<li><a href="bbs.jsp">게시판</a></li>
</ul>
<ul>
<li><a href="login.jsp">로그인</a></li>
<li><a href="join.jsp">회원가입</a></li>
</ul>
</nav>

<form method="post" action="joinAction.jsp">
	<input type="text" placeholder="아이디" name="userID"><br>
	<input type="password" placeholder="비밀번호" name="userPassword"><br>
	<input type="name" placeholder="이름" name="userName"><br>
	<input type="radio" name="userGender" >남자 <input type="radio" name="userGender" > 여자<br>
	<input type="email" name="userEmail" placeholder="이메일"><br>
	<input type="submit" value="submit"><br>
</form>
</body>
</html>