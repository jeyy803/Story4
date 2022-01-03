<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Fun Web </title>
<link rel="stylesheet" type="text/css" 
href="../css/default.css" />
<%-- ../는 한단계 상위폴더로 이동 --%>
<link rel="stylesheet" type="text/css"
href="../css/welcome.css" />
<link rel="stylesheet" type="text/css"
href="../css/history.css" />
<link rel="stylesheet" type="text/css"
href="../css/notice.css" />
<link rel="stylesheet" type="text/css"
href="../css/member.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">
 <header><%-- html5에서 추가된 태그로 머릿글 즉 상단영역
 지정할 때 사용한다. --%>
   
   <!-- 로그인과 회원가입메뉴 -->
   <div id="login" font-family: 'Noto Sans KR', sans-serif;>
    <a href="#">로그인</a> | <a href="./member/join.jsp">회원가입</a>
   </div>
    <div class="clear"></div>
    
   <%-- 회사로고 --%>
   <div id="logo" style="margin-left:10%; margin-top:1%;">
    <img onclick="location.href='../index.jsp'" src="../images/hynixLogo.png" 
    alt="SKhynix" style="width:100px;"/>
   </div>
   
   <%-- 상단메뉴 --%>
   <nav><%--html5에서 nav태그는 메뉴구성할 때 사용. --%>
    <ul>
     <li><a href="../company/welcome.jsp">기업정보</a></li>
     <li><a href="#">투자정보</a></li>
     <li><a href="#">인재채용</a></li>
     <li><a href="#">제품</a></li>
     <li><a href="../center/notice.jsp">고객센터</a></li>
    </ul>
   </nav>
 </header>
 
 <div class="clear"></div>
 
 
 