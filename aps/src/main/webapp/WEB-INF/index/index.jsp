<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<!--  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />-->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/css/bootstrap.min.css">  
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>  
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script></head>  
    
    <script src="text/javascript">
         $(document).ready(function() {
			
				
		  });
    
    </script>

<body>
	<div id="main">
		<div id="header" style="height:50px;widht:100%;background:blue;padding:5px 5px 6px 6px;">
		   <div style="color:white;font-size:20px;float:left">聚通达科技</div>
		   <div style="color:white;font-size:12px;float:right">您好,${sessionScope.activeUser.userName }&nbsp;&nbsp;&nbsp;&nbsp;  <span><a href="${pageContext.request.contextPath}/loginOut">退出</a></span></div>
	    
	    </div>
<c:forEach items="${activeUser.menus}" var="menu">
<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" onclick="" type="button" id="dropdownMenu1" data-toggle="dropdown">
      ${menu.name}
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu">
        <li><a href="${pageContext.request.contextPath}${menu.url}">申请</a></li>
  </ul>
</div> 

</c:forEach>
<c:if test="${not empty activeUser.permissions}">
<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" onclick="" type="button" id="dropdownMenu1" data-toggle="dropdown">
           流程审批项
    <span class="caret"></span>
  </button>
 
  <ul class="dropdown-menu">
   <c:forEach items="${activeUser.permissions}" var="permission">
        <li><a href="${pageContext.request.contextPath}${permission.url}">${permission.name}</a></li>
   </c:forEach>
  </ul>
 
</div> 
</c:if>
	  </div>
</body>
</html>