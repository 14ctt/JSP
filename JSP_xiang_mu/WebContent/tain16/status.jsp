<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="status" class="friend.Status"></jsp:useBean>
<form action="showInfo.jsp" method="post">
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	
	if(status.getQingkuang().isEmpty()){
		out.print("<h1>骚年，你很厉害！你可以gun了</h1>");
	}else{
	int num1 = (int) (Math.floor(Math.random()*4));
	String test = status.getQingkuang().get(num1);	
    ArrayList<String> xuanzhe = status.getTimu().get(test);
	out.print("<h1>" + test + "</h1>");

	for (int i = 0; i < 4; i++) {
		String showxz = xuanzhe.get(i);
		String num = String.valueOf(i);
		out.print("<p><input type='radio' name='phone' value='" + num + "'>" + showxz + "</input></p>");
	}
	status.removeArrayList(num1);
	
%>
<button type="submit">提交</button>
<%} %>
</form>
</body>
</html>