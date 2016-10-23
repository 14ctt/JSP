<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加数据</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String major = request.getParameter("major");

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");

		Statement stmt = conn.createStatement();

		int s = stmt.executeUpdate("insert into student values(" + id + ",'" + name + "'," + age + ",'" + major + "')");

		stmt.close();
		conn.close();
	%>
	<%
		if (s != 0) {
	%>
	用户信息已插入！
	<%
		} else {
	%>
	插入信息失败
	<%
		}
	%>
</body>
</html>