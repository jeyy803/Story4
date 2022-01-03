<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sungjukbean/sungjukUpdate.jsp</title>
</head>
<body>
<div class="title">* 성적 수정 *</div><br>
<a href="sungjukForm.jsp">[성적입력]</a>&nbsp;&nbsp;
<a href="sungjukList.jsp">[성적목록]</a><br>
<%
int sno=Integer.parseInt(request.getParameter("sno"));
dto=dao.read(sno);
if(dto==null){
	out.print("관련 자료없음!!");
}
else{
	String addr = dto.getAddr();
%>

<form name="sungjukfrm" method="post" action="sungjukUpdateProc.jsp">
<input type="hidden" name="sno" value="<%=sno %>">
이름 : <input type="text" name="uname" value="<%=dto.getUname() %>"><br>
국어 : <input type="text" name="kor" size="5" value="<%=dto.getKor() %>"><br>
영어 : <input type="text" name="eng" size="5" value="<%=dto.getEng() %>"><br>
수학 : <input type="text" name="mat" size="5" value="<%=dto.getMat() %>"><br>
주소 : <select name="addr">
	<option value="Seoul" <%if(addr.equals("Seoul")) out.print("selected"); %>>서울</option>
	<option value="Jeju" <%if(addr.equals("Jeju")) out.print("selected"); %>>제주</option>
	<option value="Suwon" <%if(addr.equals("Suwon")) out.print("selected"); %>>수원</option>
	<option value="Busan" <%if(addr.equals("Busan")) out.print("selected"); %>>부산</option>
</select>
<br>
	<!-- <input type="button" value="수정" onclick="validate()"> -->
	<input type="submit" value="수정">
	<input type="reset" value="취소">
</form>

<%
}
%>
</body>
</html>