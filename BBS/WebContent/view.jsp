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


	<table>
	<thead>
		<tr>
		<th colspan="2">게시판 글보기</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>글 제목</td>
			<td colspan="2"><%= bbs.getBbsTitle()
			.replaceAll(" ", "&nbsp;").replaceAll
					("<","&lt;").replaceAll(">", "&rt;").replaceAll("\r\n","<br>") %></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td colspan="2"><%= bbs.getUserID() %></td>
		</tr>
		<tr>
			<td>작성일자</td>
			<td colspan="2"><%= bbs.getBbsDate() %></td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="2" style="min-height:200px; text-align:left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll
			("<","&lt;").replaceAll(">", "&rt;").replaceAll("\r\n","<br>")%></td>
		</tr>
	</tbody>
</table>
<a href="bbs.jsp" >목록</a>
<%
	if(userID != null && userID.equals(bbs.getUserID())){
%>
	<a href="update.jsp?bbsID=<%=bbsID %>">수정</a>
	<a href="deleteAction.jsp?bbsID=<%=bbsID %>">삭제</a>
<%
	}
%>
</body>
</html>