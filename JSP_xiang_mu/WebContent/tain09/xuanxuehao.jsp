<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
<html>
<head>
<title></title>
<style type="text/css">
div{
float:left;
}

a{

text-decoration:none;
}
</style>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
%>

<table>
<tr><td>学号</td><td>姓名</td><td>年龄</td><td>专业</td></tr>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  while(rs.next())
  {
    out.println("<tr>"); 
    out.println("<td ><a href='NewFile.jsp?id="+rs.getInt("id")+"'>"+rs.getInt("id")+"</a></td>");
    out.println("<td> "+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td >"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }
  rs.close();
  stmt.close();
  conn.close();
  
  
//   String sql = "select * from goods where min_name = ? and age = ?";  // 含有参数
//   PreparedStatement st = conn.prepareStatement(sql);
//   st.setString(1, "儿童"); // 参数赋值
//   st.setInt(2, 22);
//   System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '儿童'



  %> 
 <%String w=String.valueOf(session.getAttribute("e"));
 if(w.equals(null)){
	 
 }else{
	 out.println(w);
 }
 %>
</table>
</body>
</html>
