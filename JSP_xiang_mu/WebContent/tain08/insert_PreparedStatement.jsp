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
			String sql = "insert into student values(?,?,?,?)";

			// String sql ="select * from student";

			PreparedStatement st = conn.prepareStatement(sql);

			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			int age = Integer.parseInt(request.getParameter("age"));
			String major = request.getParameter("major");

			st.setInt(1, id);
			st.setString(2, name);
			st.setInt(3, age);
			st.setString(4, major);

			int check = st.executeUpdate();
			// ResultSet rs=st.executeQuery();
			// while(rs.next())
			// {
			//   out.println("<tr>"); 
			//   out.println("<td>"+rs.getInt("id")+"</td>");
			//   out.println("<td>"+rs.getString("name")+"</td>");
			//   out.println("<td>"+rs.getInt("age")+"</td>");
			//   out.println("<td>"+rs.getString("major")+"</td>");
			//   out.println("</tr>");
			// }

			st.close();
			// rs.close();
			conn.close();
		%>
		<%
			if (check != 0) {
		%>

                 用户信息已插入！

		<%
			} else {
		%>

		插入信息失败

		<%
			}
		%>
	</table>
</body>
</html>