<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/style.css"/>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="register.js"></script>

<div id="regForm" class="box">
	<h1>회원가입</h1>
	<table>
	<tr>
		<th>아이디</th><td><input id="id" name="id" type="email" size="20" 
           maxlength="50" placeholder="example@kings.com" autofocus> <button id="checkId">ID중복확인</button></td>
	</tr>
	<tr>
		<th>비밀번호</th><td><input id="passwd" name="passwd" type="password" 
           size="20" placeholder="6~16자 숫자/문자" maxlength="16"></td>
	</tr>
	<tr>
		<th>비밀번호 재입력</th><td><input id="repass" name="repass" type="password" 
           size="20" placeholder="비밀번호재입력" maxlength="16"></td>
	</tr>
	<tr>
		<th>이름</th><td> <input id="name" name="name" type="text" 
           size="20" placeholder="홍길동" maxlength="10"></td>
	</tr>
	<tr>
		<th>주소</th><td><input id="address" name="address" type="text" 
           size="30" placeholder="주소 입력" maxlength="50"></td>
	</tr>
	<tr>
		<th>이메일</th><td>  <input id="email" name="email" type="email"
           size="30" placeholder="이메일 입력" maxlength="50"></td>
	</tr>
	<tr>
		<th>성별</th><td><input class="gender" type="radio" name="gender" value="man">남자 <input class="gender" type="radio" name="gender" value="woman">여자  </td>
	</tr>
	<tr>
		<th>전화번호</th><td><input id="tel" name="tel" type="tel" 
           size="20" placeholder="전화번호 입력" maxlength="20"> </td>
	</tr>
	<tr>
		<td  colspan="2" style="text-align:center;"><button id="process">가입하기</button>
          <button id="cancle">취소</button></td>
	</tr>
	</table>
   
</div>