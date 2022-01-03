<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%--상단 공통 header.jsp 불러오기 --%>

<%--서브 메인 이미지 --%>


<div class="clear"></div>

<%--서브메뉴 --%>
<div id="sub_menu">
	<ul>
		<li><a href="welcome.jsp">CEO</a></li>
		<li><a href="history.jsp">연혁</a></li>
		<li><a href="#">Newsroom</a></li>
		<li><a href="#">Public Policy</a></li>
	</ul>
</div>

<%--서브 본문 --%>
<img src="../images/ceo1.png">
<img src="../images/ceo2.png">

<jsp:include page="../include/footer.jsp" />
<%-- 하단 공통영역 footer.jsp 불러오는 jsp:include 액션
태그 --%>









