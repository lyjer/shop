<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>报销单添加</title>
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
	<form id="inputForm" action="${pageContext.request.contextPath}/demand/saveDemand" method="post" class="form-horizontal">
		<div class="control-group">
			<label class="control-label">缴费形式：</label>
			<div class="controls">
				<input type="radio" name="demandNote.type"  value="1"  class="input-xlarge "/>现金
				<input type="radio" name="demandNote.type" value="2"  class="input-xlarge "/>支票
				<input type="radio" name="demandNote.type" value="3"  class="input-xlarge "/>银行卡
				<input type="radio" name="demandNote.type" value="4"  class="input-xlarge "/>支付宝
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">服务项目：</label>
			<div class="controls">
				<input type="radio" name="demandNote.service_item" value="1"  class="input-xlarge "/>短信
				<input type="radio" name="demandNote.service_item"  value="2"  class="input-xlarge "/>彩信
				<input type="radio" name="demandNote.service_item"  value="3"  class="input-xlarge "/>微信
				<input type="radio" name="demandNote.service_item"  value="4"  class="input-xlarge "/>其他
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">收款公司：</label>
			<div class="controls">
				<input type="text" name="demandNote.firm" class="input-xlarge "/>
			</div>
		</div>
	    <div class="control-group">
			<label class="control-label">打款人：</label>
			<div class="controls">
				<input type="text" name="demandNote.cash_man" class="input-xlarge "/>
			</div>
		</div>
		 <div class="control-group">
			<label class="control-label">打款公司：</label>
			<div class="controls">
				<input type="text" name="demandNote.cash_firm" class="input-xlarge "/>
			</div>
		</div>
		
	    <div class="control-group">
			<label class="control-label">金额：</label>
			<div class="controls">
				<input type="text" name="demandNote.money" class="input-xlarge "/>
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">是否开票：</label>
			<div class="controls">
				<input type="radio" name="demandNote.open_bill_state"  value="0"  class="input-xlarge "/>不开票
				<input type="radio" name="demandNote.open_bill_state" value="1"  class="input-xlarge "/>开票
			</div>
		</div>
		
		<div class="control-group">
			<label class="control-label">备注：</label>
			<div class="controls">
				<input type="text" name="demandNote.remark" class="input-xlarge "/>
			</div>
		</div>

		<div class="form-actions">
			<input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;
			<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
		</div>
	</form>
</body>
</html>