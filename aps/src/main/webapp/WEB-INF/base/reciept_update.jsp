<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>发票申请单修改</title>
	<meta name="decorator" content="default"/>
		 <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/css/bootstrap.min.css">  
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>  
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>  
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" type="text/css"></link>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap-datetimepicker-master/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
	</script>
</head>
  
 <body>
	<div class="container">
	<form id="inputForm" action="${pageContext.request.contextPath}/reciept/doUpdate" method="post" class="form-horizontal">
		<input type="hidden" name="reciept.receipt_id" value="${reciept.receipt_id}" >
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">发票类别 ：</label>
				<input type="text" name="reciept.type" class="input-xlarge " value="${reciept.type}" />
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">是否已收款：</label>
				<input type="radio" name="reciept.payee"  value="0"  class="input-xlarge"
				<c:if test="${reciept.payee=='0'}">checked</c:if> />未收款
				<input type="radio" name="reciept.payee" value="1"  class="input-xlarge"
				 <c:if test="${reciept.payee=='1'}">checked</c:if> />已收款
			</div>
		</div>
		
	    <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">收款方式：</label>
				
				<input type="text" name="reciept.payee_way" class="input-xlarge " value="${reciept.payee_way }" />
			</div>
		</div>
		 <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">收款时期：</label>
			    <input id="date" type="text" name="reciept.payee_date" value="${reciept.payee_date }" class="input-xlarge "/>
				
			</div>
		</div>
		
	    <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">客户名称：</label>
				<input type="text" name="reciept.custom_name" class="input-xlarge " value="${reciept.custom_name }"/>
			</div>
		</div>
		
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">税号：</label>
				<input type="text" name="reciept.tax_num" value="${reciept.tax_num }" class="input-xlarge  "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">地址电话：</label>
				<input type="text" name="reciept.address_tel"  value="${reciept.address_tel}" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开户行账号：</label>
				<input type="text" name="reciept.bank_account" value="${reciept.bank_account }" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">产品名称：</label>
				<input type="text" name="reciept.product_name" value="${reciept.product_name }" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开票内容：</label>
				<input type="text" name="reciept.receipt_content" value="${reciept.receipt_content }" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开票金额：</label>
				<input type="text" name="reciept.receipt_money" value="${reciept.receipt_money }" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">备注：</label>
				<input type="text" name="reciept.remark" value="${reciept.remark }" class="input-xlarge "/>
			</div>
		</div>

		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
		<script type="text/javascript">
		    $("#date").datetimepicker({
		           format: "yyyy-mm-dd",
			       minView: "month",
		    });
	    </script>  
	</form>
	</div>
</body>
</html>
