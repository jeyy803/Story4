<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:include page="../include/header.jsp" />

<!-- 회원관리 서브 메인이미지 -->
<div id="sub_img_member"></div>

<div class="clear"></div>

<%--서브 메뉴 --%>
<div id="sub_menu">
	<ul>
		<li><a href="join.jsp">Join us</a></li>
		<li><a href="#">Privacy policy</a></li>
	</ul>
</div>

<%--본문내용 --%>
<div id="wel_cont">
	<%--copy begin --%>
	<h1>Join Us</h1>
	<form id="join">
		<fieldset>
			<legend>Basic Info</legend>
			<label>User ID</label> <input name="" type="text" class="id">
			<input name="" type="button" value="dup. check" class="dup"><br>
			<label>Password</label> <input name="" type="password" class="pass"><br>
			<label>Retype Password</label> <input name="" type="password"
				class="pass"><br> <label>Name</label> <input name=""
				type="text" class="nick"><br> <label>E-Mail</label> <input
				name="" type="email" class="email"><br> <label>Retype
				E-mail</label> <input name="" type="email" class="email"><br>
		</fieldset>


		<fieldset>
			<legend>Optional</legend>
			<label>Address</label> <input name="" type="text" class="address"><br>
			<label>Phone Number</label> <input name="" type="tel" class="phone"><br>
			<label>Mobile Phone Number</label> <input name="" type="tel"
				class="mobile"><br>
		</fieldset>

		<div class="clear"></div>
		
		<div id="buttons">
			<input name="" type="button" value="Submit" class="submit"> <input
				name="" type="button" value="Cancel" class="cancel">
		</div>

	</form>
	<%-- copy end --%>
</div>

<jsp:include page="../include/footer.jsp" />

