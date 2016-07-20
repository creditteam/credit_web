<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收|流程</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<style type="text/css">
		html,body {
			height: 100%;
		}
	</style>
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
  </head>
  
  <body>
   	<div class="main-container">
    <div class="container">
    	<div class="row">
    		<div class="col-md-12">
    			<img alt="" src="hplus/img/cs4.jpg" style="width: 100%">
    		</div>
    	</div>
    	
    	<div class="row">
    		<div class="col-md-12">
    			<img alt="" src="hplus/img/cz3.png" style="width: 100%">
    		</div>
    	</div>
    	
    	<div class="row" style="background-color: #fff">
    		<div class="col-md-12 text-center">
    		<span class="glyphicon glyphicon-chevron-down" style="color: #ffa800"></span><br>
    		<span class="glyphicon glyphicon-chevron-down" style="color: #ffa800"></span><br>
    			<!-- <a id="apdivfr" name="apdiv" type="button" id="casbutton" class="btn btn-success" style="width:50%;" onclick="checkUser()">免费发布信息</a><br><br><br><br><br> -->
    		</div>
    		</div>
    	</div>
    </div>
    </div>
   <jsp:include page="mobile_footer.jsp"></jsp:include>
  </body>
</html>