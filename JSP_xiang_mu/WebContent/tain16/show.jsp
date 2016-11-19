<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="use" class="friend.Friend" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="use"/>

<%-- <jsp:setProperty property="yanZhi" name="use" param="yanzhi"/> --%>
<%-- <jsp:setProperty property="shenGao" name="use" param="shengao"/> --%>
<%-- <jsp:setProperty property="tiZhong" name="use" param="tizhong"/> --%>
<%-- <jsp:setProperty property="nuZhi" name="use" param="nuzhi"/> --%>
<%-- <jsp:setProperty property="aiZhi" name="use" param="aizhi"/> --%>

<p><jsp:getProperty property="yanZhi" name="use"/>分</p>
<p><jsp:getProperty property="shenGao" name="use"/>cm</p>
<p><jsp:getProperty property="tiZhong" name="use"/>kg</p>
<p><jsp:getProperty property="nuZhi" name="use"/></p>
<p><jsp:getProperty property="aiZhi" name="use"/></p>
<p><a href="status.jsp">开始测试</a>

</body>
</html>