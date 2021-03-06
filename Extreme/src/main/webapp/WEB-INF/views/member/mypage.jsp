<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300,500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Yeon+Sung&display=swap"
	rel="stylesheet">

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


<title>MIRAE SURF</title>


<style>
body,html {
line-height:3em;
height: 100%;
margin: 0;
}

#title {
	font-size: 50px;
	font-family: 'Sunflower', sans-serif;
	color: #4682B4;
}
#op{
background-image:url("resources/img/op.jpg");
height:200px;
padding-top:80px;
padding-left:10px;
opacity:0.8;
}

#name {
	font-size: 25px;
	padding: 10px;
	color: #4682B4;
}

#main_profile{
width:100%;
text-align:center;
}

#div1 {
	display:inline-block;
	border: 1px solid none;
	width: 53%;
	height: 350px;
	text-align:left;
	margin-bottom:100px;
}
.profile_info{
font-family: 'Yeon Sung', cursive;
font-size:20px;
}


#btn1 {
	margin-top: 15px;
}

#btn2 {
	position:absolute;
	left:30%;
	width:20px;
	height:35px;
	background-color:#fff;
	border: 1px solid #fff;
	color:black;
	font-size:15px;
}

#btn3{
position:absolute;
left:32%;
background-color:#fff;
border:1px solid #fff;
width:20px;
height:35px;
color:black;
font-size:15px;
}

#btn2:hover,#btn3:hover{
	color:black;
}

#th {
	color: #4682B4;
	font-family: 'Yeon Sung', cursive;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/menu.jsp"%>
	  <div id="op">
	<b id="title">MY PAGE</b>
	</div>
		
		<div id="main_profile">
		
	   <div id="div1">
	   <p style="font-size:40px;  font-family: 'Sunflower', sans-serif; color: #4682B4; font-weight:bold;">?????????
		<button id="btn2" onclick="clickcange()" style="cursor:pointer;"><i class="fas fa-user-edit"></i></button>
		<button id="btn3" onclick="clickout()" style="cursor:pointer;"><i class="fas fa-user-alt-slash"></i></button>
		</p>
	   
	   	<p class="profile_info">????????? : ${member.user_id}<br>
		<p class="profile_info">?????? : ${member.user_name}<br>
		
		<p class="profile_info">???????????? : <fmt:parseDate value="${member.user_birth}" var="dateFmt" pattern="yyMMdd"/>
		<fmt:formatDate value="${dateFmt}" pattern="yyyy-MM-dd" />
		
		<p class="profile_info">????????? : ${member.user_email}
		<p class="profile_info">?????? : ${member.user_addr}
		
	</div>
</div>

<table cellpadding="0" cellspacing="0" align="center" width="1000">
		<tr align="left" colspan="8">
			<th colspan="8"><p style="font-size:40px;  font-family: 'Sunflower', sans-serif; color: #4682B4;">????????????</p></th>
		</tr>
		<tr bgcolor="#4682B4" align="center" style="color:#fff; font-family: 'Yeon Sung', cursive; font-size:22px;">
			<td>??????</td>
			<td>??????</td>
			<td>??????</td>
			<td>??????</td>
			<td>?????????</td>
			<td>??????</td>
			<td>????????????</td>
		</tr>
		<!-- ??????????????? "????????????" -->
				 	<c:forEach begin="0" end="${(fn:length(map.mypL))}" var="i">
					<c:set var="row" value="${map.mypL[i]}" />
					<c:choose>
						
						<c:when test="${!empty row}" >
							<tr bgcolor="#fff" height="50" style="font-family: 'Yeon Sung', cursive; font-size:20px;">
								<td align="center" >${row.course }</td>
								<c:set var="norental" value="????????????"/>
								<c:choose>
								<c:when test ="${row.rental eq norental }">
								<td align="center" ></td></c:when>
								<c:when test ="${!empty row.rental }">
								<td align="center" >${row.rental }</td></c:when>
								</c:choose>
								<c:set var="noother" value="????????????"/>
								<c:choose>
								<c:when test = "${row.other eq noother }">
								<td align="center"></td></c:when>
								<c:when test="${!empty row.other }">
								<td align="center" >${row.other }</td></c:when>
								</c:choose>
								<td align="center" >${row.resday }</td>
								<td align="center" >${row.person }</td>
								<td align="center" >${row.totalpay }???</td>
								<td align="center" >${row.payment }</td>
								<td align="center"><i class="far fa-window-close" style="cursor:pointer;" onclick="deleteReservation()"></i></td>
							</tr>
						</c:when>
						
						<c:when test = "${map.count == 0}">
							<tr style="text-align: center;">
								<td colspan='10'><b>??????????????? ????????????.</b></td>
							</tr>
						</c:when>
					</c:choose>
				</c:forEach>
	</table>
		
	<script>
	function clickcange(){
		swal({
			  title: "???????????? ?????????????????? ?????????????????????????",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			   window.location.href="changemember";
			  } else {
			    swal("?????????????????????",{
			    	icon:"error"
			    });
			  }
			});
	}
	
	function clickout(){
		var user_id = '<c:out value = "${member.user_id}"/>';
		swal({
			  title: "?????? ???????????? ???????????????????",
			  text: "??????????????? ????????? ????????? ??????????????? ?????? ???????????? ?????????",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
					$.ajax({
						type : "POST",
						url : "outuser",
						data : {
							"user_id" : user_id
						},
						success : function(data) {
							alert("??????????????? ??????????????? ?????????????????????.");
							$.ajax({
								type : "GET",
								url : "logout",
								data : {},
								success : function(data) {
									location.reload(true);
									window.location.href="http://localhost:8181/home/#0";
								}
							});
						},
						error : function(data) {
							console.log(data);
						}
					});
			  } else {
			    swal("?????????????????????!",{
			    	icon:"error"
			    });
			  }
			});
	}
	
	function deleteReservation(){
		var user_id = '<c:out value = "${member.user_id}"/>';
		swal({
			  title: "?????? ????????? ?????? ???????????????????",
			  text: "????????? ?????? ????????? ??????????????? ?????? ???????????????.",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
					$.ajax({
						type : "POST",
						url : "deleteReservation",
						data : {
							"user_id" : user_id
						},
						success : function(data) {
							alert("??????????????? ??????????????? ?????????????????????.");
							$.ajax({
								type : "GET",
								data : {},
								success : function(data) {
									location.reload(true);
								}
							});
						},
						error : function(data) {
							console.log(data);
						}
					});
			  } else {
			    swal("?????????????????????!",{
			    	icon:"error"
			    });
			  }
			});
	}
	</script>
</body>
<%@ include file="/WEB-INF/views/include/quickmenu.jsp"%>
<%@ include file="/WEB-INF/views/include/cs_info.jsp"%>
</html>