<%@ page contentType="text/html; charset=UTF-8"%>
<%-- contentType속성값의 뜻은 웹브라우저에서 문자/html태그
적용,언어코딩 타입을 UTF-8로 설정. JSP는 기본문법이 자
바 문법을 따라간다. 이 부분을 JSP주석문.웹브라우저 소스보
기에서 JSP 주석문은 볼수가 없다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인화면</title>
<link rel="stylesheet" type="text/css" 
href="../css/admin.css" />
</head>
<body>
 <div id="aMain_wrap">
 <!-- div태그는 레이아웃을 작성할 때 사용하는 블록요소
 태그이고 같은 페이지에서 동일 아이디명이 있어면 안된다.-->
  <!-- 헤더영역(상단영역) -->
  <div id="aHeader_menu">
   <!-- 관리자 로고 -->
    <div id="aHeader_Logo">
     <a href="admin_index.jsp">
     <img src="./images/aLogo.png" 
     alt="관리자로고 이미지" width="120" height="50" />
     </a>
     <!-- ./는 현재 경로 -->
    </div>
    
    <!-- 관리자 상단메뉴 -->
    <div id="aMain_menu">
     <ul>
      <li><a href="admin_gongji.jsp">공지사항</a></li>
      <li><a href="#">게시판</a></li>
      <li><a href="#">자료실</a></li>
      <li><a href="#">회원관리</a></li>
     </ul>
     <!-- 웹표준에서 메뉴구성은 ul li태그를 사용한다. -->
    </div>
    
    <!-- 관리자 오른쪽 메뉴 -->
    <div id="aRright_menu">
     <form method="post" action="#">
      <h5>000님 로그인을 환영합니다.
      <input type="submit" value="로그아웃" />      
      </h5>      
     </form>
    </div>
  </div>
  <!-- 헤더 영역 끝 -->
  
  <!-- 관리자 본문영역 -->
  <div id="aMain_cont">
   <h3 class="aMain_title">관리자 메인화면입니다.</h3>
  </div>
  
  <!-- footer 영역 -->
  <div id="aFooter_menu">
   <h4 class="aFooter_title">
    서울시 성동구 00빌딩 404호. TEL)02-777-7777, FAX)02-
    444-4444, 관리자 e-mail)webmaster@naver.com
   </h4>
  </div>
 </div>
</body>
</html>







