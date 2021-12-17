<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "ch11.logon.LogonDBBean" %>

<% request.setCharacterEncoding("utf-8");%>

<%
  String id = (String)session.getAttribute("id");
  String passwd  = request.getParameter("passwd");
	
  LogonDBBean manager = LogonDBBean.getInstance();

  int check = manager.deleteMember(id,passwd);
	
  if(check == 1)//탈퇴성공시
	 session.invalidate();//세션을 무효화
  
  out.println(check);
%>