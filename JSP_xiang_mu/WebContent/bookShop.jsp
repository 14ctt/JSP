<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="dist/css/bootstrap.min.css" rel="stylesheet">
<link href="dist/css/bootstrap.css" rel="stylesheet">
<link href="dist/css/bootstrap-theme.css" rel="stylesheet">
<link href="dist/css/bootstrap-theme.min.css" rel="stylesheet">
<style type="text/css">

body {
	background: #8E8E8E;
	text-align:center;
}
</style>
</head>
<body>
<form action="bookShopCheck.jsp" method="get">
<hr>
欢迎访问本网站！
<hr>
请选择要购买的书：
<hr>
<select name="item" >
<option>《java程序设计与项目实训教程》</option>
<option>《JSP程序设计技术教程》</option>
<option>《JSP程序设计与项目实训教程》</option>
<option>《JSP程序设计实训与案例教程》</option>
<option>《Strues2+Hibernate框架技术教程》</option>
<option>《wed框架技术（Strues2+Hibernate+Spring3）教程》</option>
<option>《Java Wed技术整合应用与项目实战（JSP+Servlet+Strues2+Hibernate+Spring3）》</option>

</select>
<br>
<hr>
<input type="submit" name="submit" value="购买"/>
</form>
</body>
</html>