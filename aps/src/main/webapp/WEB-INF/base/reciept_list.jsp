<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>发票申请单管理</title>
	<meta name="decorator" content="default"/>
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/css/bootstrap.min.css">  
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>  
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>  
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
	
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="">发票申请单列表</a></li>
		<li><a href="${pageContext.request.contextPath}/reciept/add">发票申请单添加</a></li>
		<li><a href="${pageContext.request.contextPath}/reciept/findApprove">发票申请单情况查询</a></li>
		
	</ul>
	
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead><tr><th>发票类别</th><th>是否已收款</th><th class="sort-column login_name">收款方式</th><th class="sort-column name">收款时期</th><th>客户名称</th><th>税号</th><th>地址电话</th><th>开户行账号</th><th>产品名称</th><th>开票内容</th><th>开票金额</th><th>备注</th><th>操作</th></tr></thead>
		<tbody>
		  <c:forEach items="${reciepts}" var="reciept">
			<tr>
				<td>${reciept.type}</td>
				<td>${reciept.payee}</td>
				<td>${reciept.payee_way}</td>
				<td>${reciept.payee_date}</td>
				<td>${reciept.custom_name}</td>
				<td>${reciept.tax_num}</td>
				<td>${reciept.address_tel}</td>
				<td>${reciept.bank_account}</td>
				<td>${reciept.product_name}</td>
				<td>${reciept.receipt_content}</td>
				<td>${reciept.receipt_money}</td>
				<td>${reciept.remark}</td>
				<td>
    				<a href="${pageContext.request.contextPath}/reciept/apply/${reciept.receipt_id}">申请审批</a>
    				<a href="${pageContext.request.contextPath}/reciept/update/${reciept.receipt_id}">修改</a>
					<a href="${pageContext.request.contextPath}/reciept/delete/${reciept.receipt_id}" >删除</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>