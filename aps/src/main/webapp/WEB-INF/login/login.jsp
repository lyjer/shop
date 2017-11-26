<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<!--  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/css/bootstrap.min.css">  
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>  
    <script src="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <style type="text/css">
html, body, table {
	background-color: #f5f5f5;
	width: 100%;
	text-align: center;
}

.form-signin-heading {
	font-family: Helvetica, Georgia, Arial, sans-serif, é»ä½;
	font-size: 36px;
	margin-bottom: 20px;
	color: #0663a2;
}

.form-signin {
	position: relative;
	text-align: left;
	width: 300px;
	padding: 25px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .checkbox {
	margin-bottom: 10px;
	color: #0663a2;
}

.form-signin .input-label {
	font-size: 16px;
	line-height: 23px;
	color: #999;
}

.form-signin .input-block-level {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px;
	*width: 283px;
	*padding-bottom: 0;
	_padding: 7px 7px 9px 7px;
}

.form-signin .btn.btn-large {
	font-size: 16px;
}

.form-signin #themeSwitch {
	position: absolute;
	right: 15px;
	bottom: 10px;
}

.form-signin div.validateCode {
	padding-bottom: 15px;
}

.mid {
	vertical-align: middle;
}

.header {
	height: 80px;
	padding-top: 20px;
}

.alert {
	position: relative;
	width: 300px;
	margin: 0 auto;
	*padding-bottom: 0px;
}

label.error {
	background: none;
	width: 270px;
	font-weight: normal;
	color: inherit;
	margin: 0;
}
</style>
<script type="text/javascript">
		$(document).ready(function() {
			
			});
	</script>
</head>
<body>
	<div class="header">
          <h1 class="form-signin-heading">聚通达科技</h1>
	</div>
	<form id="loginForm" class="form-signin" action="${pageContext.request.contextPath}/login"
		method="post">
		<label class="input-label" for="username">用户名:</label> 
		<input
			type="text" id="username" name="user.user_name"
			class="input-block-level required"> 
			
			<label
			class="input-label" for="password">密码:</label> 
			<input type="password"
			id="password" name="user.password" class="input-block-level required">
		<input class="btn btn-large " style="float: right" type="submit" value="登录" />
	</form>
</body>
</html>