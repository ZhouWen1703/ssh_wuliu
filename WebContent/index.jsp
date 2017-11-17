<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="css/style.css">
		<style type="text/css">
	
		</style>
	</head>
	<body link="#669900" alink="#FFCC66" vlink="#FF3300">
		<table width="786" height="1143" border="0" align="center"
			cellpadding="0" cellspacing="0" background="images/main.gif">
			<tr align="left" valign="top">
				<td height="146" colspan="3"><jsp:include page="/top.jsp" /></td>
			</tr>
			<tr>
				<td width="215" height="905" align="left" valign="top">
					<table width="100%" height="415" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="152" align="left" valign="top">
								<table width="100%" height="172" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="94%" height="37">
											&nbsp;
									<e:choose>
									<e:when test="${sessionScope.s==null }">
										<div id="div1">
										<jsp:include page="login.jsp"></jsp:include>
										</div>
										</e:when>
										<e:otherwise>
											<div>
												<span>${sessionScope.s }</span>
											</div>
										</e:otherwise>
									</e:choose>
										</td>
										<td width="6%">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="129" valign="top">
								<table width="100%" height="64" border="0" cellpadding="0"
									cellspacing="0">
									<form method="POST" action="#" name="form1">
										<tr>
											<td width="32%" height="32">
												&nbsp;<font size="2">信息查询</font>
											</td>
											<td width="68%">
												<input type="text" name="text" value="关键字" maxLength="20"
													size="8">
											</td>
										</tr>
										<tr>
											<td>
												&nbsp;<font size="2">关键字 </font>
											</td>
											<td>
												<select size="1" name="style">
													<option value="db_CarMessage" selected>
														车辆信息
													</option>
													<option value="db_GoodsMeg">
														货物信息
													</option>
													<option value="tb_Enterprise">
														企业信息
													</option>
												</select>
												<input type="submit" value="查询" name="B1">
											</td>
										</tr>
									</form>
								</table>
							</td>
						</tr>
						<tr>
							<td height="134">
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td width="354" valign="top">
					<table width="101%" height="896" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="299" valign="top">
								<table width="100%" height="302" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="34">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="226" valign="top">
											<table width="100%" height="226" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="13%" align="center">
														&nbsp;
													</td>
													<td width="87%" height="13" align="center">
														&nbsp;
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#">
															<u>关于xxxxx公司货物送达时客户要求注意事项</u>
														</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="14" align="right">
											<a href="#">&nbsp;>>>更多信息&nbsp;</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="295" valign="top">
								<table width="100%" height="292" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="25" valign="middle" background="images/car.gif">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="226" align="left" valign="top">
											<table width="100%" height="226" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="12%" align="center">
														&nbsp;
													</td>
													<td width="88%" height="13" align="center">
														&nbsp;
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="10" align="left">
														<a href="#"><u>关于第三运输公司集装箱车辆保养维护细节说明</u> </a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="39" align="right" valign="middle">
											<a href="#">>>>更多信息&nbsp;</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="294" align="left" valign="top">
								<table width="100%" height="294" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="27" background="images/enterprise.gif">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="226" valign="top">
											<table border="0" width="100%" height="226">
												<tr>
													<td width="11%" align="center">
														&nbsp;
													</td>
													<td width="89%" height="13" align="left">
														&nbsp;
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
												<tr>
													<td align="center">
														&nbsp;
													</td>
													<td height="9" align="left">
														<a href="#">
															<u>大连广运物流集团公司年度总结说明会</u>
														</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="39" align="right">
											<a href="#">>>>更多信息&nbsp;</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
				<td width="217" valign="top">
					<table width="100%" height="618" border="0" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="303" valign="top">
								<table width="100%" height="303" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="27">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="13" align="left" valign="top">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="226" align="left" valign="top">
											<table width="216" height="46" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td width="30" align="center" valign="middle">
														&nbsp;
													</td>
													<td width="186" height="25" align="left" valign="middle">
														<a href="#" onClick="window.open(
															'#','','width=786,height=430');"><u>集团公司网站上线使用说明</u>
														</a>
													</td>
												</tr>
												<tr>
													<td width="30" align="center" valign="middle">
														&nbsp;
													</td>
													<td width="186" height="25" align="left" valign="middle">
														<a href="#" onClick="window.open(
															'#','','width=786,height=430');"><u>集团公司网站上线使用说明</u>
														</a>
													</td>
												</tr>
												<tr>
													<td width="30" align="center" valign="middle">
														&nbsp;
													</td>
													<td width="186" height="25" align="left" valign="middle">
														<a href="#" onClick="window.open(
															'#','','width=786,height=430');"><u>集团公司网站上线使用说明</u>
														</a>
													</td>
												</tr>
												<tr>
													<td width="30" align="center" valign="middle">
														&nbsp;
													</td>
													<td width="186" height="25" align="left" valign="middle">
														<a href="#" onClick="window.open(
															'#','','width=786,height=430');"><u>集团公司网站上线使用说明</u>
														</a>
													</td>
												</tr>
												<tr>
													<td width="30" align="center" valign="middle">
														&nbsp;
													</td>
													<td width="186" height="25" align="left" valign="middle">
														<a href="#" onClick="window.open(
															'#','','width=786,height=430');"><u>集团公司网站上线使用说明</u>
														</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<table width="100%" height="311" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="5%" height="32">
											&nbsp;
										</td>
										<td width="95%" height="32">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td height="279">
											&nbsp;
										</td>
										<td align="center" valign="top">
											<table width="97%" height="269" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="18" align="center">
														&nbsp;
													</td>
												</tr>
												<tr>
													<td height="61" align="center">
														<img src="images/image02.jpg">
													</td>
												</tr>
												<tr>
													<td height="63" align="center">
														<img src="images/image01.jpg">
													</td>
												</tr>
												<tr>
													<td height="52" align="center">
														<img src="images/image04.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
												<tr>
													<td height="62" align="center">
														<img src="images/image05.jpg">
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr align="center" valign="middle">
				<td height="23" colspan="3">
					<a href="mailto:客户服务中心信箱：xxxx@xxxxx.com">客户服务中心信箱：xxxx@xxxxx.com</a>&nbsp;
					<font size="2">客户服务中心热线直播：xxxx－xxxxxxxx</font>
				</td>
			</tr>
			<tr align="center" valign="middle">
				<td height="23" colspan="3">
					<font size="2">公司名称：xxxxxxxxxxxxxxxx&nbsp; 邮政编码：xxxxxx</font>
				</td>
			</tr>
			<tr align="center" valign="middle">
				<td height="23" colspan="3">
					<font size="2">Copyright 20011 xxxx</font>
					<a href="manager.jsp"><span style="color:blue">【<u>系统管理</u>】</span></a>
				</td>
			</tr>
		</table>
	</body>
</html>