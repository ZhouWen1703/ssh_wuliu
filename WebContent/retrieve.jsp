<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="RetrieveServlet" method="get">
			<table>
				<tr>
					<td>用户名:</td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" id="email"></td>
				</tr>
				<tr>
					<td>提示问题:</td>
					<td><input type="text" name="question" id="question"></td>
				</tr>
				<tr>
					<td>答案:</td>
					<td><input type="text" name="answer" id="answer"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="查找">
						<input type="reset" value="重置">
						<a href="">返回主页</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>