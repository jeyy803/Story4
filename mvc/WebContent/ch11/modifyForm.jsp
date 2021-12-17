<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch11.logon.LogonDataBean" %>
<%@ page import = "ch11.logon.LogonDBBean" %>

<link rel="stylesheet" href="../css/style.css"/>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="modify.js"></script>

<% request.setCharacterEncoding("utf-8");%>

<% 
  String id = (String)session.getAttribute("id");
  String passwd = request.getParameter("passwd");

  LogonDBBean manager = LogonDBBean.getInstance();
  //아이디와 비밀번호에 해당하는 사용자의 정보를 얻어냄
  LogonDataBean m = manager.getMember(id,passwd); 
    
  try{//얻어낸 사용자 정보를 화면에 표시
%>

<div id="regForm" class="box">
<h1 style="text-align:center;">회원정보수정</h1>
	<table>
	<tr>
		<th>아이디</th><td><input id="id" name="id" type="email" size="20" 
           maxlength="50" value="<%=id%>" readonly disabled> </td>
	</tr>
	<tr>
		<th>비밀번호</th><td><input id="passwd" name="passwd" type="password" 
           size="20" placeholder="6~16자 숫자/문자" maxlength="16"></td>
	</tr>
	<tr>
		<th>이름</th><td> <input id="name" name="name" type="text" 
           size="20"value="<%=m.getName()%>" maxlength="10"></td>
	</tr>
	<tr>
		<th>주소</th><td><input id="address" name="address" type="text" 
           size="30" value="<%=m.getAddress()%>" maxlength="50"></td>
	</tr>
	<tr>
		<th>이메일</th><td>  <input id="email" name="email" type="email"
           size="30" value="<%=m.getEmail()%>" maxlength="50"></td>
	</tr>
	<tr>
		<th>성별</th><td>
		<% String gender= m.getGender();
    	%>
          <input class="gender" name="gender" type="radio" 
           size="30" maxlength="50" <% if(gender=="man") { %>active <%} %>>남자
            <input class="gender" name="gender" type="radio" 
           size="30" maxlength="50" <% if(gender=="woman") { %>active<%} %>>여자
		 </td>
	</tr>
	<tr>
		<th>전화번호</th><td><input id="tel" name="tel" type="tel" 
           size="20" placeholder="전화번호 입력" maxlength="20"> </td>
	</tr>
	<tr>
		<td  colspan="2" style="text-align:center;"><button id="process">수정하기</button>
          <button id="cancle">취소</button></td>
	</tr>
	</table>
   
</div>
<%}catch(Exception e){}%>