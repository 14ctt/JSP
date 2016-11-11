<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>
<style>
div{
margin:auto;
}
</style>
<jsp:useBean id="student" class="sj.Student" scope="request" ></jsp:useBean>
<jsp:setProperty property="name" name="student" param="name" />
<jsp:setProperty property="major" name="student" param="major" />


<body>
<div>
<%

if(student.jdbc()){
	out.print("注册成功");
	%>
	<p>
<jsp:getProperty property="name" name="student"/>
</p>
<p>
<jsp:getProperty property="major" name="student"/>
</p>
	
	<%
}
else{
	out.print("注册失败 ");
}
// Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
%>


</div>
</body>
</html>