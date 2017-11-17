<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
</style>
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<body>
<div align="center" id="div1">
<span id="s1" style="color:red"> </span><br>
	名称&nbsp;&nbsp;<input type="text" name="name" id="name" required="true"><br>
	密码&nbsp;&nbsp;<input type="password" name="pwd" id="pwd" required="true"><br>
	&nbsp;<button id="btn">登录</button>
	&nbsp;&nbsp;<a href="register.jsp">注册</a>
	&nbsp;&nbsp;<a href="retrieve.jsp">找回密码</a>

</div>
</body>
<script type="text/javascript">
	$("#btn").click(function(){
		$.post("loginAction",
				{
				name:$("#name").val(),
				pwd:$("#pwd").val()
				},function(responseText){
					if(responseText.indexOf("错误")!=-1){
						$("#s1").html(responseText);
					}else{
					$("#div1").html(responseText);
					}
		})
	});
</script>
</html>