<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sungjukDel.jsp</title>
</head>
<body>
* 성적 삭제 * <br>
<%
int sno = Integer.parseInt(request.getParameter("sno"));
int res= dao.delete(sno);
if(res==0){
	out.print("삭제 실패");
}
else{
%>
	<script type="text/javascript">
		alert("성적이 삭제 되었습니다.");
		location.href="sungjukList.jsp";
	</script>
<%
}
%>
</body>
</html>