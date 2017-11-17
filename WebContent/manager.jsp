<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#div1{
		position:relative;
		top: -100px;
		left: -15px;
	}
	#div2{
		position:relative;
		top: -90px;
		left: 15px;
	}
</style>
</head>
<body>
<div align="center">
	<img alt="管理" src="images/login.gif">
	<form action="MloginServlet" method="post">
	<div id="div1">
	用户名：<input type="text" name="name" id="name" required="true"><br>
	密&nbsp;&nbsp;&nbsp;码：<input type="password" name="pwd" id="pwd" required="true">
	</div>
	<div id="div2">
	<input type="submit" value="登录">
	<input type="reset" value="重置">
	<a href="index.jsp">返回主页</a>
	</div>
	</form>
</div>
</body>
</html>