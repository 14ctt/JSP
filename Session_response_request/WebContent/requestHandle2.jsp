<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试成绩</title>
</head>
<body>
<%
float examResults=0;
String str1=request.getParameter("1");
String str2=request.getParameter("2");
String str3=request.getParameter("3");
String str4=request.getParameter("4");
if(str1==null)
	str1="";
if(str2==null)
	str2="";
if(str3==null)
	str3="";
if(str4==null)
	str4="";
for(int i=1;i<=4;i++){
	switch(i){
	case 1:
		if(str1.equals("B")){
			examResults++;
		}
		break;
		
	case 2:
		if(str2.equals("A")){
			examResults++;		
		}
		break;
	case 3:
		if(str3.equals("D")){
			examResults++;		
		}
		break;
	case 4:
		if(str4.equals("C")){
			examResults++;
		}
		break;
	}
	
}
session.setAttribute("chengji", (examResults/4)*100); 
%>
<h3>您本次的测试成绩是：</h3>
<%=(examResults/4)*100 %>分
<br>
<%
if((examResults/4)*100<60){
	%>
	<%="你的成绩小于60不能跳转网页！"%>
	<% 
}else{	
response.sendRedirect("requestHandle.jsp");
}
%>
</body>
</html>