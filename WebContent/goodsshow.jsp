<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body bgcolor="#ffffff">
		<table width="785" height="117" border="0" align="center"
			cellpadding="0" cellspacing="0" bgcolor="#E8FFFF">
			<tr>
				<td width="786" colspan="9" style="padding: 5px;">
					<jsp:include page="/top.jsp" />
					<p align="center">
						<font size="5">货物信息</font>
				</td>
			</tr>
			
			</table>
			<e:choose><e:when test="${sessionScope.s!=null }">
			<table bgcolor="#E8FFFF" align="center">
			<tr>
				<td width="785" height="30" colspan="9" align="right">
					<a href="goods.jsp">发布信息...</a><font size="4">&nbsp;</font>
				</td>
			</tr>
			</table>
			<table width="785" height="117" border="1" align="center"
			cellpadding="0" cellspacing="0" bgcolor="#E8FFFF">
			<tr>
				<td width="786" height="29" align="center">
					货物类型
				</td>
				<td width="786" height="29" align="center">
					货物名称
				</td>
				<td width="786" height="29" align="center">
					货物数量
				</td>
				<td width="786" height="29" align="center">
					数量单位
				</td>
				<td width="786" height="29" align="center">
					起始省份
				</td>
				<td width="786" height="29" align="center">
					起始城市
				</td>
				<td width="786" height="29" align="center">
					抵达省份
				</td>
				<td width="786" height="29" align="center">
					抵达城市
				</td>
				<td width="786" height="29">
					<p align="center">
						详细
				</td>
			</tr>
			<e:forEach items="${sessionScope.page.list }" var="act">
			<tr style="padding: 5px;">

				<td width="786" height="29" align="center">
					${act.goodsStyle }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsName }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsNumber }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsUnit }
				</td>
				<td width="786" height="29" align="center">
					${act.startOmit }
				</td>
				<td width="786" height="29" align="center">
					${act.startCity }
				</td>
				<td width="786" height="29" align="center">
					${act.endOmit }
				</td>
				<td width="786" height="29" align="center">
					${act.endCity }
				</td>
				<td width="786" height="29">
					<p align="center">
						<a href="detailGoodsAction?ID=${act.ID }">详细</a>
				</td>
			</tr>
</e:forEach>
</e:when>
	<e:otherwise>
	<table width="785" height="117" border="1" align="center"
			cellpadding="0" cellspacing="0" bgcolor="#E8FFFF">
			<tr>
				<td width="786" height="29" align="center">
					货物类型
				</td>
				<td width="786" height="29" align="center">
					货物名称
				</td>
				<td width="786" height="29" align="center">
					货物数量
				</td>
				<td width="786" height="29" align="center">
					数量单位
				</td>
				<td width="786" height="29" align="center">
					起始省份
				</td>
				<td width="786" height="29" align="center">
					起始城市
				</td>
				<td width="786" height="29" align="center">
					抵达省份
				</td>
				<td width="786" height="29" align="center">
					抵达城市
				</td>

			</tr>
			<e:forEach items="${sessionScope.page.list }" var="act">
			<tr style="padding: 5px;">

				<td width="786" height="29" align="center">
					${act.goodsStyle }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsName }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsNumber }
				</td>
				<td width="786" height="29" align="center">
					${act.goodsUnit }
				</td>
				<td width="786" height="29" align="center">
					${act.startOmit }
				</td>
				<td width="786" height="29" align="center">
					${act.startCity }
				</td>
				<td width="786" height="29" align="center">
					${act.endOmit }
				</td>
				<td width="786" height="29" align="center">
					${act.endCity }
				</td>
				
			</tr>
</e:forEach>
			</table>
	</e:otherwise>
</e:choose>
			<tr>
				<td width="785" height="30" colspan="9" align="right">

					<table width="784" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="786" height="30" colspan="9" align="right">

								<table width="786" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="786" height="30" colspan="9" align="right">
											共${sessionScope.page.totalPages }页
											<a href="goodsmegAction?act=1">第一页</a>
											<e:choose>
												<e:when test="${currentNum>1 }">
											<a href="goodsmegAction?act=${currentNum-1 }">上一页</a>
												</e:when>
												<e:otherwise>
											<a>上一页</a>
												</e:otherwise>
											</e:choose>
											<e:choose>
											<e:when test="${currentNum!=sessionScope.page.totalPages }">
											<a href="goodsmegAction?act=${currentNum+1 }">下一页</a>
											</e:when>
											<e:otherwise>
												<a>下一页</a>
											</e:otherwise>
											</e:choose>
											<a href="goodsmegAction?act=${sessionScope.page.totalPages }">最后一页</a>
											<span class="bgcolor"> <input name="topage"
													type="text" class="txt_grey" size="3" value="2">页</span>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>