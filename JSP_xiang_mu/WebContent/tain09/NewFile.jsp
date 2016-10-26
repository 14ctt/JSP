

<%@page import="java.sql.*,java.io.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
div{
text-align:center;
margin:0px auto;
}
</style>
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");


%>

</head>
<body>
<form action="update.jsp" method="post">
<div>
<% 
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String s="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
Connection conn=java.sql.DriverManager.getConnection(s,"sa","");
Statement stm=conn.createStatement();
ResultSet rs=stm.executeQuery("select * from student where id="+request.getParameter("id"));

while(rs.next()){
	out.println("学号：<input type='text' onfocus=this.blur() name='id' value="+rs.getInt("id")+"><br>");	
	out.println("姓名：<input type='text' name='name' value="+rs.getString("name")+"><br>");
	out.println("年龄：<input type='text' name='age' value="+rs.getInt("age")+"><br>");
	out.println("专业：<input type='text' name='major' value="+rs.getString("major")+"><br>");
} 
%>
<button type="submit">提交</button>
<div>学号不可编辑</div>
</div>
</form>
</body>
</html>