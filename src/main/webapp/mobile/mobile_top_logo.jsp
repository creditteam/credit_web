<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="row">
	<div class="col-xs-6"><img style="height: 24px" id="logo" src="<%=basePath%>hplus/img/logo.jpg"  alt="快易收"></div>
	<div class="col-xs-6"><p style="color: #5f5d5d">服务热线 ： 4008-338-997</p></div>
</div>
