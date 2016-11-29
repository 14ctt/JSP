<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交页面</title>
</head>
<body>
<form action="ServletTest" method="post">
<p>留&nbsp;&nbsp;言&nbsp;&nbsp;者：<input name="name"/></p>
<p>留言标题：<input name="biaoTi"/></p>
<p>留言内容：<textarea name="neiRong" rows="8" cols="30"></textarea></p>
<button type="submit">提交</button>
<button type="reset">重置</button>
<a href="showMessage.jsp">查看留言</a>
</form>
</body>
</html>