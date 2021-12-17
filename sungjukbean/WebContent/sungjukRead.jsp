<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sungjukbean/sungjukRead.jsp</title>
</head>
<body>
<div class="title">* 성적 상세보기 *</div><br>
<a href="sungjukForm.jsp">[성적입력]</a>
<a href="sungjukList.jsp">[성적목록]</a><br>
<%
int sno=Integer.parseInt(request.getParameter("sno"));
dto=dao.read(sno);
if(dto==null){
	out.print("관련자료 없음!!");
}
else{
%>
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%=dto.getUname() %></td>
		</tr>
		<tr>
			<th>국어</th>
			<td><%=dto.getKor() %></td>
		</tr>
		<tr>
			<th>영어</th>
			<td><%=dto.getEng() %></td>
		</tr>
		<tr>
			<th>수학</th>
			<td><%=dto.getMat() %></td>
		</tr>
		<tr>
			<th>평균</th>
			<td><%=dto.getAver() %></td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
			<%
			String addr=dto.getAddr();
			if(addr.equals("Seoul"))
				out.print("서울");
			else if(addr.equals("Jeju"))
				out.print("제주");
			else if(addr.equals("Suwon"))
				out.print("수원");
			else if(addr.equals("Busan"))
				out.print("부산");
			%>
			</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=dto.getWdate() %></td>
		</tr>
	</table>
	<br>
	<br>
	<a href='sungjukList.jsp'>[목록]</a>&nbsp;
	<a href='sungjukUpdate.jsp?sno=<%=sno %>'>[수정]</a>&nbsp;
	<a href='sungjukDel.jsp?sno=<%=sno %>'>[삭제]</a>
	
<%
}
%>
</body>
</html>