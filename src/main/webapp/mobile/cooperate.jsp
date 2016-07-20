<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收|商务合作</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	
	<jsp:include page="mobile_meta.jsp"></jsp:include>

  </head>
  
  <body>
    <div class="main-container">
    	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	    <div class="row">
	    	<div class="col-md-12">
	   			<img alt="" src="<%=basePath%>hplus/img/swhz.jpg" style="width: 100%">
	   		</div>
	    </div>
    </div>
   <jsp:include page="mobile_footer.jsp"></jsp:include>
  </body>
</html>
