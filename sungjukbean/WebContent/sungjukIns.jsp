<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sungjukbean/sungjukIns.jsp</title>
</head>
<body>
* 성적 결과 * <br>
<%
request.setCharacterEncoding("utf-8");
String uname = request.getParameter("uname").trim();
int kor = Integer.parseInt(request.getParameter("kor").trim());
int eng = Integer.parseInt(request.getParameter("eng").trim());
int mat = Integer.parseInt(request.getParameter("mat").trim());
String addr=request.getParameter("addr");
int aver = (kor+eng+mat)/3;
%>

//dto객체에 담기
dto.setUname(uname);
dto.setKor(kor);
dto.setEng(eng);
dto.setMat(mat);
dto.setAver(aver);
dto.setAddr(addr);

int res = dao.insert(dto);
if(res==0){
	out.print("행추가실패<br>");
	out.print("<a href='javascript:history.back();'>[다시시도]</a>");
}else{
	response.sendRedirect("sungjukList.jsp");
}

%>
</body>
</html>