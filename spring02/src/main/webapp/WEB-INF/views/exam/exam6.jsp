<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<h2>영화목록 업로드</h2>
<form name="form1" method="post" action="${path}/exam/examUpload" enctype="multipart/form-data" target="iframe1">
영화이름 : <input name="mname" id="mname"><br>
감독 : <input name="director" id="director"><br>
주연 : <input name="actor" id="actor"><br>
포스터 : <input type="file"  name="file" id="file"><br>
<input type="submit" id="업로드">
<iframe name="iframe1"></iframe>
</form>
</body>
</html>