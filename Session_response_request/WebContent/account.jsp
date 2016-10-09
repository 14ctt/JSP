<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>结账</title>
<script type="text/javascript">
	function n() {
		var name = document.getElementById("dv");
		if (name.innerHTML)
			name.innerHTML
	}
</script>
</head>
<body>
	<%
		String gn = request.getParameter("goodsName");
		session.setAttribute("goods", gn);
		String keHu = (String) session.getAttribute("customer");
		String xingMing = (String) session.getAttribute("name");
		String shangPing = (String) session.getAttribute("goods");
		if (shangPing.length() <= 0) {
			
	%>
	<script type="text/javascript">
		window.onload=function () {
			var name = document.getElementById("dv");
			name.innerHTML = "你未选择商品;"
		}
	</script>
	<%
		} else {
	%>
	<script type="text/javascript">
	window.onload=function () {
			var name = document.getElementById("dv");

			name.innerHTML = "你购买的商品是："+<%=shangPing%>;
		}
	</script>
	<%
		}
	%>
	<h3>结账信息：</h3>
	<hr>
	<%=keHu %>的姓名是：<%=xingMing %>
	<br>
	<div id="dv">
		</div>
</body>
</html>