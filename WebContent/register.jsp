<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: left;
}

tr span {
	color: red
}
</style>
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<body>
	<h2 align="center">会员注册</h2>
	<h5 align="center">
		<span style="color: red">*&nbsp;&nbsp;</span>注意以下内容必须填写完整
	</h5>
	<div align="center">
		<form action="addBendiAction" method="post" onsubmit="return check()">
			<table border="1" width="650">
				<tr>
					<td>名字：</td>
					<td><input type="text" name="name" id="name" onblur="aa()"><span
						id="s1">*</span></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="pwd1" id="pwd1" onblur="bb()"><span
						id="s2">*</span></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" name="pwd2" id="pwd2" onblur="cc()"><span
						id="s3"></span></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td><input type="radio" name="sex" value="男">男 <input
						type="radio" name="sex" value="女">女</td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="tel" id="tel"><span
						id="s4"></span></td>
				</tr>
				<tr>
					<td>Email：</td>
					<td><input type="text" name="email" id="email"><span
						id="s5"></span></td>
				</tr>
				<tr>
					<td>找回密码问题：</td>
					<td><input type="text" name="question" id="question"></td>
				</tr>
				<tr>
					<td>问题答案：</td>
					<td><input type="text" name="answer" id="answer"></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center">
					<input type="submit" value="注册" id="submit">&nbsp;&nbsp;&nbsp;&nbsp;
					 <input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;
					  <a href="">返回</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
<script type="text/javascript">
	var f = true;
	function aa() {
		var reg = /^([a-zA-Z0-9]){6,20}$/;
		var r = reg.test($("#name").val());
		if (r) {
			$.post("selNameAction", {
				name : $("#name").val()
			}, function(data) {
				$("#s1").html(data);
			})
		} else {
			$("#s1").html("*姓名6-20个字符");
			f=false;
		}
	};
	function bb(){
		if($("#pwd1").val()!=null){
		var reg=/^([a-zA-Z0-9_.]){6,16}$/;
		var r = reg.test($("#pwd1").val());
		if(r==false){
			$("#s2").html("*密码6-20个字符");
			f=false;
		}
		}
	};
	function cc(){
		if($("#pwd2").val()!=null){
			if($("#pwd2").val()!=$("#pwd1").val()){
				$("#s3").html("*两次密码不一致");
				f=false;
			}else{
				f=true;
			}
		}else{
			f=true;
		}
	};
	$("#name").focus(function(){
		$("#s1").html("*");
	});
	$("#pwd1").focus(function(){
		$("#s2").html("*");
	});
	$("#pwd2").focus(function(){
		$("#s3").html("");
	});
	$("#name").change(function(){
		aa();
	});
	$("#pwd1").change(function(){
		bb();
	});
	$("#pwd2").change(function(){
		cc();
	});
	function check(){
		var n1 = document.getElementById("name").value;
		var n2 = document.getElementById("pwd1").value;
		var n3 = document.getElementById("pwd2").value;
		if(($("#s1").html())==("*用户名已被占用")){
			f=false;
		}
		if((n1==null) || (n2==null) || (n3==null)){
			 alert("请将必填信息填写完整");
			 return false;
		}
		if(f==false){
			alert("请正确填写信息");
			return false;
		}else{
			return true;
		}
	};
</script>
</html>