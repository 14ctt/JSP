<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>提交页面PreparedStatement</title>
<style>
div{
margin:auto;
text-align:center;
}
div div{
color:red;
}

</style>
<script type="text/javascript">
function check(){
	var s=document.getElementsByTagName("input");
	
	if(s[0].value.trim().length==0){
		return false;
		alert("jsdfkl");
	}
    if(s[1].value.trim().length==0){
    	return false;
	}
	if(s[2].value.trim().length==0){
		return false;
}
	if(s[3].value.trim().length==0){
		return false;
}
	return true;
	
	
	
}
</script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
	%>

	<form onsubmit="return check()" action="insert_PreparedStatement.jsp" method="post">
	<div>
	
		学号：<input type="text" name="id" /> <br>
		姓名：<input type="text" name="name" /><br>
		年龄：<input type="text" name="age" /> <br>
		专业：<input type="text" name="major" /><br>
		<div id="div"></div><br>
		<button type="submit">提交</button>
		
		</div>
	</form>
</body>
</html>