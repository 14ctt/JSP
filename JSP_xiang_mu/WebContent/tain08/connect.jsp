<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询</title>

</head>
<body>
<table border="1" >

<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from student");
while(rs.next())
{
  out.println("<tr>"); 
  out.println("<td>"+rs.getInt("id")+"</td>");
  out.println("<td>"+rs.getString("name")+"</td>");
  out.println("<td>"+rs.getInt("age")+"</td>");
  out.println("<td>"+rs.getString("major")+"</td>");
  out.println("</tr>");
}
rs.close();
stmt.close();
conn.close();


// String sql = "select * from goods where min_name = ? and age = ?";  // 含有参数
// PreparedStatement st = conn.prepareStatement(sql);
// st.setString(1, "儿童"); // 参数赋值
// st.setInt(2, 22);
// System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '儿童'
%>  
</table>



</body>
</html>