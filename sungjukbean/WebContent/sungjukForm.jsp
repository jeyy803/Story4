<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>sungjukForm.jsp</title>
</head>
<body>
* 성적 입력 폼  *<br><br>
<form method="post" action="sungjukIns.jsp">
<table border="1">
<tr>
	<th>이름</th>
	<td><input type="text" name="uname"></td>
</tr>
<tr>
	<th>국어</th>
	<td><input type="text" name="kor" size="5"></td>
</tr>
<tr>
	<th>영어</th>
	<td><input type="text" name="eng" size="5"></td>
</tr>
<tr>
	<th>수학</th>
	<td><input type="text" name="mat" size="5"></td>
</tr>
<tr>
	<th>주소</th>
	<td>
		<select name="addr">
			<option value="Seoul">서울</option>
			<option value="Jeju">제주</option>
			<option value="Suwon">수원</option>
			<option value="Busan">부산</option>
		</select>
	</td>
</tr>
<tr>
	<td colspan="2" align="center">
		<input type="submit" value="전송">
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
</html>