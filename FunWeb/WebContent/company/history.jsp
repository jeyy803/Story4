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
<div id="wel_cont" style="margin-right:40%;">
	<%-- copy begin --%>
	<h1>History</h1>
	<div class="y2021">
		<h3>2021</h3>
		<dl>
			<dd>2020년 사회적 가치(SV) 실적 발표</dd>
			<dd>업계 최고 성능 기업용 SSD 신제품 양산</dd>
			<dd>박정호 부회장 각자 대표이사로 선임
업계 최대 용량 LPDDR5 모바일 D램 양산</dd>
			<dd>이천 M16 팹 준공</dd>
			<dd>사회적 가치 중장기 추진계획 ‘SV2030’ 로드맵 발표</dd>
		</dl>	
		<div class="clear"></div>
	</div>

	<div class="y2020">
		<h3>2020</h3>
		<dl>
		
			<dd>업계 최고층 '176단 4D 낸드'개발</dd>
			<dd>세계 최초 DDR5 D램 출시
인텔 낸드 메모리 사업 인수 발표</dd>
			<dd>AI 전문회사 '가우스랩스' 출범</dd>
			<dd>초고속 D램 ‘HBM2E’ 본격 양산</dd>
			<dd>고려대에 반도체공학부 신설
2019 CDP 선정 ‘물 경영’ 대상 수상</dd>
		</dl>
		
		<div class="clear"></div>
	</div>

	<div class="y2019">
		<h3>2019</h3>
		<dl>
			<dd>‘글로벌 뉴스룸’ 오픈
3세대 10나노급(1z) DDR4 D램 개발</dd>
			<dd>업계 최고속 ‘HBM2E’ 개발</dd>
			<dd>친환경 반도체 생태계 구축 위한 ‘에코 얼라이언스(ECO Alliance)’ 출범</dd>
			<dd>월세계 최초 '128단 4D 낸드' 양산</dd>
		</dl>
		
		
		<div class="clear"></div>
	</div>
	<%-- copy end --%>
</div>

<jsp:include page="../include/footer.jsp" />
<%-- 하단 공통영역 footer.jsp 불러오는 jsp:include 액션
태그 --%>

