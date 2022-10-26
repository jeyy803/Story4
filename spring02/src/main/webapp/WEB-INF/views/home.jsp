<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page session="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Home</title>
	<%@ include file="include/header.jsp" %>
</head>
<body>
<%@ include file="include/menu.jsp" %>
<!-- pageScope < requestScope < sessionScope < applicationScope
      현재페이지 -->
<!-- 세션변수가 존재하면 
 if(session.getAttribute("userid") != null):자바 코드
 -->
<c:if test="${sessionScope.userid != null}">
 <h2>
 ${sessionScope.name}
 (${sessionScope.userid})님의 방문을 환영합니다.
 </h2>
</c:if>

<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<!-- 실제로  서비스 되는 디렉토리(배포디렉토리) -->
<%=application.getRealPath("/WEB-INF/views/images/") %>
</body>
</html>
