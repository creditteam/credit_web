<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>
<div style="height: 60px">
<div class="container-fluid">
	<nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #FF7F50;">
	<ul class="nav text-center">
		<li role="presentation" class="col-xs-3 " style="padding: 0px;">
			<a href="${basePath }index" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-home"></i><br>主页</a>
		</li>
		<li role="presentation" class="col-xs-3 " style="padding: 0px;color: #fff">
			<a target="_blank" href="http://form.mikecrm.com/yJPdFL" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-plus-sign"></i><br>加盟</a>
		</li>
		<li role="presentation" class="col-xs-3 " style="padding: 0px;color: #fff">
			<a href="javascript:void(0)" onclick="publishInfo()" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-share"></i><br>发布</a>
		</li>
		<li role="presentation" class="col-xs-3 " style="padding: 0px;color: #fff">
			<a href="${basePath }user/tologin" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-user"></i><br>登录|注册</a>
		</li>
	</ul>
	</nav>
</div></div>
<!-- .subfooter end -->
<script>
	function publishInfo(){
		if('${userInfo}' == null || '${userInfo}' == ''){
			alert("请先登录后发布!");
			window.location.href = "${basePath}user/tologin";
		}else{
			window.location.href = "${basePath }credit/saveCredit?creditType=1&userId=${userInfo.id}";
		}
	}
</script>