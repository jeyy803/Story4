<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
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
	int pageNumber = 1;
	if(request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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

<table>
	<thead>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</thead>
	<tbody>
	<%
		BbsDAO bbsDAO = new BbsDAO();
		ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
		for(int i=0; i<list.size(); i++){
	%>
	<tr>
		<td><%=list.get(i).getBbsID()%></td>
		<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle()%></a></td>
		<td><%=list.get(i).getUserID()%></td>
		<td><%=list.get(i).getBbsDate()%></td>
	</tr>
	<%
		}
	%>
	</tbody>
</table>
<%
 if(pageNumber != 1){
%>
<a href="bbs.jsp?pageNumber=<%=pageNumber -1 %>">이전</a>
<%
 }if(bbsDAO.nextPage(pageNumber)){
%>
<a href="bbs.jsp?pageNumber=<%= pageNumber + 1%>">다음></a>
<%
 }
%>
<a href="write.jsp">글쓰기</a>
</body>
</html>