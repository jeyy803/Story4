<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Fun Web </title>
<link rel="stylesheet" type="text/css" 
href="./css/default.css" />
</head>
<body>
<div id="wrap">
 <header><%-- html5에서 추가된 태그로 머릿글 즉 상단영역
 지정할 때 사용한다. --%>
   
   <!-- 로그인과 회원가입메뉴 -->
   <div id="login">
    <a href="#">로그인</a> | <a href="./member/join.jsp">회원가입</a>
   </div>
    
    <div class="clear"></div>
    
   <%-- 회사로고 --%>
   <div id="logo" style="margin-left:10%; margin-top:1%; font-family: 'Noto Sans KR', sans-serif;">
    <img onclick="location.href='index.jsp'" src="./images/hynixLogo.png" 
    alt="SKhynix" style="width:100px;"/>
   </div>
   
   <%-- 상단메뉴 --%>
   <nav><%--html5에서 nav태그는 메뉴구성할 때 사용. --%>
    <ul>
     <li><a href="./company/welcome.jsp">기업정보</a></li>
     <li><a href="#">투자정보</a></li>
     <li><a href="#">인재채용</a></li>
     <li><a href="#">제품</a></li>
     <li><a href="./center/notice.jsp">고객센터</a></li>
    </ul>
   </nav>
 </header>
 
 <div class="clear"></div>
 
 <%--메인 이미지 --%>
 <div id="main_img">
  <img src="./images/hynix_banner.png" style="width:100%; height:654px;" 
   height="282" />
 </div>
 
 <div class="clear"></div>
 

 <div style="text-align:center; margin-top:3%; ">
 <div style="float: left; width: 25%; ">
 <h1>100%</h1>
 <p>전 사업장 재생에너지 사용 비율<p>
 <p>(2050년 목표)</p>
 </div>
 <div style="float: left; width: 25%;">
  <h1>3배</h1>
 <p>2020년 대비 수자원 재이용량 확대<p>
 <p>(2030년 목표)</p>
 </div>
  <div style="float: left; width: 25%;">
   <h1>736억원</h1>
 <p>사회적 공헌 투자액<p>
 <p>(2020년 기준)</p>
 </div>
  <div style="float: left; width: 25%;">
    <h1>2705억원</h1>
 <p>협력사 동반성장 지원액<p>
 <p>(2020년 기준)</p>
 </div>
 </div>
 
 <div class="clear"></div>
 
 <%--하단 footer영역 --%>
 <footer><%--footer도 하단영역을 지정할 때 사용하는 태그
 로 html5에서 새롭게 추가된 것. --%>
  <hr/><%--수평선--%>
  <div id="copy">
   All contents Copyright 2019 FunWeb Inc. all rights
   reserved<br/>
   Contact mail: funweb@funwebbiz.com Tes:+82 64 123 43
   15 Fax +82 64 123 4321
  </div>
  <div id="social">
    <img src="./images/facebook.gif" width="33" 
    height="33" alt="Facebook" />
    <img src="./images/twitter.gif" width="33"
    height="34" alt="Twitter" />  
  </div>
 </footer>
</div>
</body>
</html>










