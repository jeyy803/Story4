<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://kit.fontawesome.com/049a2474af.js"
	crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>


<title>MIRAE SURF</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/full-page-scroll.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Sunflower:300,500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Yeon+Sung&display=swap" rel="stylesheet">
<style>
.header {
	width: 100%;
	height: 20%;
	background: #fff;
	background-size: cover;
}
span,a{
font-family: 'Sunflower', sans-serif;
}
#mirae_surf:hover{
color:#fff;
}

.navigation {
	position:fixed;
	width: 100%;
	padding: 18px 0;
	text-align: center;
}
#social{
text-align:right;
position:fixed;
width:100%;
height:70px;
background-color:black;
opacity:0.6;
top:30px;
}
#social i:hover{
color:#fff;
cursor:pointer;
}
.navigation a {
	font-size: 28px;
	text-transform: uppercase;
	padding: 0 18PX;
	text-decoration: NONE;
	color: white;
	font-weight: 500;
	transition: 0.3s;
}

.navigation a:hover {
	color:black;
	
}

.navigation i {
color:white;
font-size:25px;
}

.nav {
	position: fixed;
	background: #F5BB4E;
}

section div {
	font-family: 'Do Hyeon', sans-serif;
	font-style: normal;
	text-align: center;
	position: relative;
	top: 50%;
	transform: translateY(-50%);
}

.section2{
background-image:url("resource/img/section2bg.jpg");
width:100%;
height:100%;
}

.section1 .reservation, .inquiry {
	postion:fixed;
	display: inline-block;
	margin-right: 80px;
	margin-left: 80px;
}

i {
	padding: 30px;
	color:white;
	font-family: 'Sunflower', sans-serif;
}
i:hover{
color:black;
}

span{
	font-size: 3em;
	text-align: center;
	color:white;
}
p{
font-family: 'Yeon Sung', cursive;
color:#fff;
font-size:30px;
}

videobcg { 
	position: absolute; right: 0; bottom: 0;top: 0; left: 0;

min-width: 100%; min-height: 100%;

width: auto; height: auto; z-index: -100;
}
#sec3{
height:100%;
width:100%;
}

</style>

</head>

<body>
		<section class="section1">
			<video id="videobcg" preload="auto" autoplay="true" loop="loop" muted="muted" volume="0" width="1920" height="1080">
     <source src="resources/video/surfer3.mp4" type="video/mp4">
</video>
<script>
	// 마이페이지 클릭 이벤트
	function mypBtn() {
		var user_id = '<c:out value = "${member.user_id}"/>';
		
		$.ajax({
			type : "GET",
			url : "mypL",
			data : {
				"user_id" : user_id
				
			}, success : function(data) {
				window.location.href = "mypage?user_id=" + user_id;
			}
		});	
	}
</script>
				<div id="social">
				<i class="fab fa-facebook" onclick="window.open('https://www.facebook.com/')"></i>
				<i class="fab fa-instagram" onclick="window.open('https://www.instagram.com')"></i>
				<i class="fab fa-twitter" onclick="window.open('https://www.twitter.com')"></i>
				<i class="fab fa-youtube" onclick="window.open('https://www.youtube.com')"></i>
				</div>
			
				<div class="navigation">
					<a href="#" style="font-size: 50px; text-decoration:none;" id="mirae_surf">MIRAE SURF</a>
					<br> <br> <br> <br> 
					<a onclick="location.href='useinformation'" style="cursor:pointer;">이용안내</a>
					<a onclick="location.href='fareinformation'" style="cursor:pointer;">시설안내</a>
					<a onclick="location.href='facilityinformation'" style="cursor:pointer;">요금안내</a>
					<a onclick="location.href='locationinformation'" style="cursor:pointer;">위치안내</a>
					<br><br><br><br>
					
					<input type="hidden" id="myp" value="${myp}" />
		<c:choose>
			<c:when test="${member.user_id eq 'admin'}">
				<i class="fas fa-list-alt" onclick="location.href='admin'" style="cursor:pointer;"> 현황표</i>
				<i class="fas fa-sign-out-alt" onclick="logout()" style="cursor: pointer"> 로그아웃</i>
			</c:when>
			<c:when test="${member.user_id == null}">
				<i class="fas fa-check" onclick="gologin()"  style="cursor:pointer" )> 예약</i>
				<i class="fas fa-question" style="cursor:pointer" onclick="location.href='question'"> 고객센터</i>
				<i class="fas fa-sign-in-alt" onclick="location.href='login'" 
					style="cursor: pointer"> 로그인</i>
				<i class="fa fa-user-plus" onclick="location.href='term'"
					style="cursor: pointer"> 회원가입</i>
			</c:when>
			<c:otherwise>
				<input type="hidden" id="member_id" name="member_id"
					value="${member.user_id}" />
				<i class="fas fa-check"   style="cursor:pointer" onclick="location.href='reservation'")> 예약</i>
				<i class="fas fa-question" style="cursor:pointer" onclick="location.href='question'"> 고객센터</i>
				<i class="fas fa-user" onclick="mypBtn()" style="cursor:pointer;"> 내정보</i>
				<i class="fas fa-sign-out-alt" onclick="logout()"
					style="cursor: pointer"> 로그아웃</i>
				
			</c:otherwise>
		</c:choose>
	</div>
<script>
		function gologin(){
			alert("예약은 로그인 후 가능합니다.");
			location.href="login";
		}
		function logout() {
			$.ajax({
				type : "GET",
				url : "logout",
				data : {},
				success : function(data) {
					alert("로그아웃 성공");
					location.reload(true);
				}
			});
		}
		</script>
		</section>
</body>
</html>