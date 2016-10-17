<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>连接数据库</title>
</head>
<body>
	<table>
		<%
		try{
			String url = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();

			Connection con = java.sql.DriverManager.getConnection(url, "sa", "");

			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from xinxi where zhanghao="+"1253955039");
// 			String s;
// 			String i;

			while (rs.next()) {
// 				s=rs.getString("zhanghao");
// 				i=rs.getString("mima");
				out.println("<tr>");
				out.println("<td>" + rs.getString("zhanghao") + "</td>");
				out.println("<td>" + rs.getString("mima") + "</td>");
				out.println("</tr>");
			}

			rs.close();
			stmt.close();
			con.close();
		}catch(Exception e){
		}
		%>
	</table>
</body>
</html>