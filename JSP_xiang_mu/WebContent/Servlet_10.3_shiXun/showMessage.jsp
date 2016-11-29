<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.sccc.UseBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示留言页面</title>
</head>

<body>
<%
UseBean use = (UseBean)request.getAttribute("use");
if(use.getName()!=null||!use.getName().equals("")||
use.getBiaoTi()!=null||!use.getBiaoTi().equals("")||use.getNeiRong()!=null||!use.getNeiRong().equals("")||use.getTime()!=null||!use.getTime().equals("")){
	String name=use.getName();
	String biaoTi = use.getBiaoTi();
	String neiRong = use.getNeiRong();
	String time = use.getTime();
	%>
	
	<p>留&nbsp;&nbsp;言&nbsp;&nbsp;者：<%=name %></p>
	<p>留言标题：<%=biaoTi %></p>
	<p>留言内容：<%=neiRong %></p>
	
	<%
}
%>
</body>
</html>