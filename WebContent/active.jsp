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
						<font size="5">动态信息</font>
				</td>
			</tr>
			</table>
			<table width="785" height="117" border="1" align="center"
			cellpadding="0" cellspacing="0" bgcolor="#E8FFFF">
			<tr>
				<td width="14%" height="29" align="center">
					<font size="2">ID</font>
				</td>
				<td width="14%" height="29" align="center">
					<font size="2">标题</font>
				</td>
				<td width="14%" height="29" align="center">
					<font size="2">作者</font>
				</td>
				<td width="14%" height="29" align="center">
					<font size="2">发布日期</font>
				</td>
				<td width="14%" height="29" align="center">
					<font size="2">详细</font>
				</td>

			</tr>
			<e:forEach items="${sessionScope.page.list }" var="act">
			<tr>
				<td width="14%" height="32" align="center"><font size="2">${act.ID }</font></td>
				<td width="14%" height="32" align="center"><font size="2">${act.title }</font></td>
				<td width="14%" height="32" align="center"><font size="2">${act.author }</font></td>
				<td width="14%" height="32" align="center"><font size="2">${act.issueDate }</font></td>
				<td width="14%" height="32" align="center">
					<a href="#" onClick="window.open('#', '', 'width=790,height=530');"><font size="2">详细</font></a>
				</td>
			</tr>
			</e:forEach>
			<tr>
				<td width="786" height="30" colspan="9" align="right">

					<table width="786" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td width="786" height="30" colspan="9" align="right">
								共${sessionScope.page.totalPages }页
								<a href="activeAction?act=1">第一页</a>
											<e:choose>
												<e:when test="${currentNum>1 }">
											<a href="ActiveAction?act=${currentNum-1 }">上一页</a>
												</e:when>
												<e:otherwise>
											<a>上一页</a>
												</e:otherwise>
											</e:choose>
											<e:choose>
											<e:when test="${currentNum!=sessionScope.page.totalPages }">
											<a href="activeAction?act=${currentNum+1 }">下一页</a>
											</e:when>
											<e:otherwise>
												<a>下一页</a>
											</e:otherwise>
											</e:choose>
								<span class="bgcolor"> <input name="topage" type="text"
										class="txt_grey" size="3" value="2">页</span>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
		</table>
	</body>
</html>