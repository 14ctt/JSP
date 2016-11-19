<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
div{
margin:auto;
}
</style>
</head>
<body>
<div>
<h1>我的第一个女朋友</h1>
<form action="show.jsp" method="post">
<p>颜值：<input name="yanZhi" placeholder="分"/></p>
<p>身高：<input name="shenGao" placeholder="cm"/></p>
<p>体重：<input name="tiZhong" placeholder="kg"/></p>
<p>怒值：<input name="nuZhi" /></p>
<p>爱值：<input name="aiZhi" /></p>
<button type="submit">提交</button>

</form>
</div>
</body>
</html>