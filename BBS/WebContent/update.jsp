<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
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
if(userID == null){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요')");
	script.println("location.href='login.jsp'");
	script.println("</script>");
}
int bbsID = 0;
if(request.getParameter("bbsID")!=null){
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if(bbsID == 0){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("location.href='bbs.jsp'");
	script.println("</script>");
}
Bbs bbs = new BbsDAO().getBbs(bbsID);
if(!userID.equals(bbs.getUserID())){
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('권한이 없습니다.')");
	script.println("location.href='bbs.jsp'");
	script.println("</script>");
}

%>
<nav>
<a>게시판</a>
<ul>
<li><a href="main.jsp">메인</a></li>
<li><a href="bbs.jsp">게시판</a></li>
</ul>

<ul>
<li><a href="logout.jsp">로그아웃</a></li>
</ul>

</nav>

<form action="updateAction.jsp?bbsID=<%=bbsID %>" method="post">
	<table>
	<thead>
		<tr>
		<th colspan="2">게시판 글 수정 양식</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><input type="text" placeholder="글제목" name="bbsTitle"
			 value="<%=bbs.getBbsTitle()%>"></td>
		</tr>
		<tr>
		<td><textarea name="bbsContent" style="min-height:350px;"><%=bbs.getBbsContent()%> </textarea>
		</tr>
	</tbody>
</table>
<input type="submit" value="수정">
</form>

</body>
</html>