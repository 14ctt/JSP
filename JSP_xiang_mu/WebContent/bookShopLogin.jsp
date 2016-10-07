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
input {
	width: 326px;
	height: 42px;
	line-align: 42px;
	padding: 13px 16px 13px 14px;
}

body {
	background: #8E8E8E;
}

.dv {
	width: 800px;
	height: 600px;
	text-align: center;
	padding: 0px auto; margin : 0px auto;
	background: #FFFFFF;
	margin: 0px auto;
}

.control-group {
	margin: 14px auto;
}
hr{
height:80px;
}
.btn{width:300px; margin:0px auto;} .btn-large{width:300px;margin:0px auto;} .btn-block{width:300px;margin:0px auto;} .btn-primary{width:300px;margin:0px auto;}
</style>
</head>
<body bgcolor="#6C6C6C">

	<form class="form-horizontal" action="bookShopLoginCheck.jsp">
		<div class="dv">
		<hr size="1"  />
			<div >
				<h1>
					<strong>请先登录</strong>
				</h1>
			</div>
			<div class="control-group">

				<div class="controls">
					<input type="text" name="userName" id="inputEmail" placeholder="用户账号">
				</div>
			</div>
			<div class="control-group">

				<div class="controls">
					<input type="password" name="password" id="inputPassword" placeholder="用户密码">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">

					<button type="submit" class="btn btn-large btn-block btn-primary">登录</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>