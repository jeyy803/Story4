<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
</head>
<body>
	<%-- <%@ include file="../include/menu.jsp" %> --%>
	<h2>book list</h2>
	<table border="1">
		<tr>
			<th>NO.</th>
			<th>제목</th>
			<th>제조사</th>
			<th>금액</th>
			<th>수량</th>
		</tr>
		<c:forEach var="row" items="${list}">
		<tr>
			<td>${row.id}</td>
			<td>${row.title}</td>
			<td>${row.anthor}</td>
			<td>${row.price}</td>
			<td>${row.qty}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>