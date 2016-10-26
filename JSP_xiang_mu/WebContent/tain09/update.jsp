<%@page import="java.sql.*,java.io.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>
	<%
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String s = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		Connection conn = java.sql.DriverManager.getConnection(s, "sa", "");
		Statement stm = conn.createStatement();
		// UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值
		int chen=stm.executeUpdate("update student set name='"+request.getParameter("name")
									+"',age="+Integer.parseInt(request.getParameter("age"))
									+",major='"+request.getParameter("major")
									+"'where id="+Integer.parseInt(request.getParameter("id"))
									
				);
		
		conn.close();
		stm.close();
		session.setAttribute("i", chen);
	%>
	<%
		if (chen != 0) {
			
	%>
	信息更新成功！
	
	
	<%
	session.setAttribute("e", "信息更新成功！");
	response.sendRedirect("xuanxuehao.jsp");
		} else {
	%>
	信息更新失败！
	
	<%
	session.setAttribute("e", "信息更新失败！");
	response.sendRedirect("xuanxuehao.jsp");
		}
	%>
</body>
</html>