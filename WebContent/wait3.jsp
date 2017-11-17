<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="set()">
<h2 style="color:red">修改成功</h2>
<h3>页面将在<span id="s1"></span>秒后跳转...</h3>
<button id="btn" onclick="tiao()">立即返回</button>
</body>
<script type="text/javascript">
	var t1=5;
	function set(){
	document.getElementById("s1").innerHTML=t1;
	window.setTimeout("set()", 1000);
		t1=t1-1;
		if(t1<0){
				tiao();
			}
	}
	function tiao(){
		window.location="goodsshow.jsp";
	}

</script>
</html>