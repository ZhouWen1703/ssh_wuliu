<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/style.css">
<table width="786" border="0" cellspacing="0" cellpadding="0"
	align="center">
	<tr>
		<td height="117" colspan="9" background="images/head.gif">
			&nbsp;
		</td>
	</tr>
	<tr>
		<td width="215" height="31" background="images/date.jpg" align="center">
			<font color="#FFFFFF">2011年12月18日&nbsp;&nbsp;星期日</font>
		</td>
		<td width="71" height="31" align="center"
			background="images/banner.jpg">
			<a href="index.jsp"><font color="#FFFFFF">本站首页</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="activeAction?act=1"><font color="#FFFFFF">物流动态</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="#"><font
				color="#FFFFFF">物流知识</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="goodsmegAction?act=1"><font color="#FFFFFF">货物信息</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="#"><font color="#FFFFFF">车辆信息</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="#"><font
				color="#FFFFFF">企业信息</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<a href="#"><font
				color="#FFFFFF">辅助工具</font>
			</a>
		</td>
		<td width="71" align="center" background="images/banner.jpg">
			<input type="button" value="退出" id="btn1" style="background:#645B55; border-style: none;color:#FFFFFF ">
			</a>
		</td>
	</tr>
</table>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$("#btn1").click(function(){
		$.get("deleteAction",function(){
			window.location.href="index.jsp";
		})
	})
</script>