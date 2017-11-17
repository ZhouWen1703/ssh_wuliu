<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<body>
<table border="1" align="center"  width="785" height="117">
<e:forEach items="${sessionScope.list }" var="act">
<tr>
	<td  width="300">货物编号：</td>
	<td  width="485" id="td1">${act.ID }</td>
</tr>
<tr>
	<td>货物类型：</td>
	<td>${act.goodsStyle }</td>
</tr>
<tr>
	<td>货物名称：</td>
	<td>${act.goodsName }</td>
</tr>

<tr>
	<td>货物数量：</td>
	<td>${act.goodsNumber }</td>
</tr>
<tr>
	<td>数量单位：</td>
	<td>${act.goodsUnit }</td>
</tr>
<tr>
	<td>起始省份：</td>
	<td>${act.startOmit }</td>
</tr>
<tr>
	<td>起始城市：</td>
	<td>${act.startCity }</td>
</tr>
<tr>
	<td>抵达省份：</td>
	<td>${act.endOmit }</td>
</tr>
<tr>
	<td>抵达城市：</td>
	<td>${act.endCity }</td>
</tr>
<tr>
	<td>运输类型：</td>
	<td>${act.style }</td>
</tr>
<tr>
	<td>运输时间：</td>
	<td>${act.transportTime }</td>
</tr>
<tr>
	<td>联系电话：</td>
	<td>${act.phone }</td>
</tr>
<tr>
	<td>联系人：</td>
	<td>${act.link }</td>
</tr>
<tr>
	<td>备注：</td>
	<td>${act.remark }</td>
</tr>
<tr>
	<td>车辆要求：</td>
	<td>${act.request }</td>
</tr>
<tr>
	<td>发布时间：</td>
	<td>${act.issueDate }</td>
</tr>
<tr>
	<td>发布人</td>
	<td>${act.userName }</td>
</tr>	
	<tr>
		<td colspan="2">
		<e:if test="${act.userName == sessionScope.s }">
			<button id="btn1">删除</button>
			<button id="btn2">修改</button>
			</e:if>
			<a href="goodsshow.jsp">返回上一页</a>
			<a href="index.jsp">返回主页</a>
		</td>
	</tr>
	</e:forEach>
</table>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改信息</h4>
				</div>
				<e:forEach items="${sessionScope.list }" var="act">
				<form role="form" action="updateGoodsAction" method="post">
					<input type="hidden" name="id" value="${act.ID }">
					<div class="modal-body"  style="overflow-y: scroll;height:500px;">
						<div class="form-group">
							<label for="name">货物类型</label> <input type="text"
								class="form-control" id="title" placeholder="${act.goodsStyle }" name="gclass" value="${act.goodsStyle }">
						</div>
						<div class="form-group">
							<label for="name">货物名称</label> <input type="text"
								class="form-control" id="title" placeholder="${act.goodsName }" name="gname" value="${act.goodsName }">
						</div>
						<div class="form-group">
							<label for="name">货物数量</label> <input type="text"
								class="form-control" id="title" placeholder="${act.goodsNumber }" name="gcount" value="${act.goodsNumber }">
						</div>
						<div class="form-group">
							<label for="name">货物单位</label> <input type="text"
								class="form-control" id="title" placeholder="${act.goodsUnit }" name="gunit" value= "${act.goodsUnit }">
						</div>
						<div class="form-group">
							<label for="name">起始省份</label> <input type="text"
								class="form-control" id="title" placeholder="${act.startOmit }" name="gstartfirm" value="${act.startOmit }">
						</div>
						<div class="form-group">
							<label for="name">起始城市</label> <input type="text"
								class="form-control" id="title" placeholder="${act.startCity }" name="gstartcity" value="${act.startCity }">
						</div>
						<div class="form-group">
							<label for="name">抵达省份</label> <input type="text"
								class="form-control" id="title" placeholder="${act.endOmit }" name="gendfirm" value="${act.endOmit }">
						</div>
						<div class="form-group">
							<label for="name">抵达城市</label> <input type="text"
								class="form-control" id="title" placeholder="${act.endCity }" name="gendcity" value="${act.endCity }">
						</div>
						<div class="form-group">
							<label for="name">运输类型</label> <input type="text"
								class="form-control" id="title" placeholder="${act.style }" name="gtransstyle" value="${act.style }">
						</div>
						<div class="form-group">
							<label for="name">运输时间</label> <input type="text"
								class="form-control" id="title" placeholder="${act.transportTime }" name="gtime" value="${act.transportTime }">
						</div>
						<div class="form-group">
							<label for="name">联系电话</label> <input type="text"
								class="form-control" id="title" placeholder="${act.phone }" name="gphone" value="${act.phone }">
						</div>
						<div class="form-group">
							<label for="name">联系人</label> <input type="text"
								class="form-control" id="title" placeholder="${act.link }" name="glink" value="${act.link }">
						</div>
						<div class="form-group">
							<label for="name">备注</label> <input type="text"
								class="form-control" id="title" placeholder="${act.remark }" name="gremark" value="${act.remark }">
						</div>
						<div class="form-group">
							<label for="name">车辆要求</label> <input type="text"
								class="form-control" id="title" placeholder="${act.request }" name="grequest" value="${act.request }">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							关闭</button>
						<button type="reset" class="btn btn-default">重置</button>
						<button type="submit" class="btn btn-primary" id="bt2">发布</button>
					</div>
				</form>
					</e:forEach>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</body>
<script type="text/javascript">
	$("#btn1").click(function(){
		$.post("deleteGoodsAction",{
			id:$("#td1").html()
		},function(data){
			if(data.indexOf("true")!=-1){
				alert("删除成功")
				window.location="goodsshow.jsp";
			}
		})
	})
	$("#btn2").click(function(){
		$("#myModal").modal(2);
	});

</script>
</html>