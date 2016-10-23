<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>插入页面</title>
<style type="text/css">
form{
text-align:center;

}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>
	<form action="delete.jsp" method="post">
	请选择你要删除信息的学号：
	<select name="id">
		<%
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
			Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
		

			String sql ="select id from student";

			PreparedStatement st = conn.prepareStatement(sql);

		
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
			
			  out.println("<option>"+rs.getInt("id")+"</option>");
			 
			}

			st.close();
			rs.close();
			conn.close();
		%>
		</select><br>
		<button type="submit">提交</button>
	</form>
</body>
</html>