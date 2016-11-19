<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="friend.Friend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form>
<%
Friend gf = (Friend)session.getAttribute("use");
String phone = request.getParameter("phone");

int nuZhi = gf.getNuZhi();
int ai = gf.getAiZhi();

if(phone.equals("0")){
	nuZhi = nuZhi+10;
}else if(phone.equals("1")){
	nuZhi = nuZhi+30;
}else if(phone.equals("2")){
	ai = ai+30;
}else if(phone.equals("3")){
	ai = ai+10;
	nuZhi = nuZhi+10;
}

gf.setNuZhi(nuZhi);
gf.setAiZhi(ai);

if(gf.getNuZhi() > 20){
	out.println("<h1>恭喜你！你已经go die 了</h1>");
}else{
	out.println("<h1>骚年你要小心，女朋友的怒气已达到"+gf.getNuZhi()+"</h1>");	
	if(gf.getAiZhi() > 30){
		out.println("<h1>哎哟，不错哦，女朋友还蛮喜欢你的嘛~~~</h1>");		
	}
	if(gf.getAiZhi()>100){
		out.println("<h1>恭喜，你们可以步入殿堂了</h1>");	
	}
	out.println(" <a href='status.jsp'>继续测试 </a> ");
}


%>
</form>
</body>
</html>