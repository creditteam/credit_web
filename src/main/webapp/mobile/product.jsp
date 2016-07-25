<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收|处置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="<%=basePath%>hplus/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
body {background:url(<%=basePath%>hplus/img/bg.gif) top center no-repeat; background-size:cover;}
</style>
  </head>
  
  <body>
	<div class="main-container">
		<div class="container"
			style="border: thin solid #ffeeee; background-color: #fff">
			<div class="row">
				<jsp:include page="mobile_top_logo.jsp"></jsp:include>
				<div class="col-md-12">
					<img alt="" src="${basePath }hplus/img/cz_new.jpg" style="width: 100%">
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="mobile_footer.jsp"></jsp:include>

  </body>
</html>
