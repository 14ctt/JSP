<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>插入页面PreparedStatement</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>
	<table>
		<%
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");

			String sql ="delete student where id=?";

			PreparedStatement st = conn.prepareStatement(sql);

			int id = Integer.parseInt(request.getParameter("id"));

			st.setInt(1, id);

			int check = st.executeUpdate();

			st.close();
			conn.close();
		%>
		<%
			if (check != 0) {
		%>

                 删除成功！

		<%
			} else {
		%>

		删除失败！

		<%
			}
		%>
	</table>
</body>
</html>