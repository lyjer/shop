<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	
	<title>报销单添加</title>
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
	<form id="inputForm" action="${pageContext.request.contextPath}/reciept/doAdd" method="post" class="form-horizontal">
		
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">发票类别 ：</label>
				<input type="text" name="reciept.type" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">是否已收款：</label>
				<input type="radio" name="reciept.payee"  value="0"  class="input-xlarge "/>是
				<input type="radio" name="reciept.payee" value="1"  class="input-xlarge "/>否
			</div>
		</div>
		
	    <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">收款方式：</label>
				<input type="text" name="reciept.payee_way" class="input-xlarge "/>
			</div>
		</div>
		 <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">收款时期：</label>
				<input id="date" type="text" name="reciept.payee_date" class="input-xlarge "/>
				
			</div>
		</div>
		
	    <div class="control-group">
			
			<div class="controls">
			    <label class="control-label">客户名称：</label>
				<input type="text" name="reciept.custom_name" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">税号：</label>
				<input type="text" name="reciept.tax_num" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">地址电话：</label>
				<input type="text" name="reciept.address_tel" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开户行账号：</label>
				<input type="text" name="reciept.bank_account" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">产品名称：</label>
				<input type="text" name="reciept.product_name" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开票内容：</label>
				<input type="text" name="reciept.receipt_content" class="input-xlarge "/>
			</div>
		</div>
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">开票金额：</label>
				<input type="text" name="reciept.receipt_money" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			
			<div class="controls">
			    <label class="control-label">备注：</label>
				<input type="text" name="reciept.remark" class="input-xlarge "/>
			</div>
		</div>

		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form>
	<script type="text/javascript">
	    $("#date").datetimepicker({
	           format: "yyyy-mm-dd",
		       minView: "month",
	    });
    </script>  
	
	</div>
</body>
</html>
