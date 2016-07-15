<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>快易收债权管理|注册</title>
<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
<meta name="author" content="htmlcoder.me">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<jsp:include page="mobile_meta.jsp"></jsp:include>

</head>

<body>
	<div class="main-container">
		<jsp:include page="mobile_top_logo.jsp"></jsp:include>
		<div class="row">
			<div>
				<img class="carousel-inner img-responsive img-rounded" alt="" src="${basePath}hplus/img/25.jpg">
			</div>
		</div>
		
		<div class="row" style="padding: 0px 50px 0px 50px;">
			<form action="Register" class="bs-example bs-example-form" method="POST" role="form">
				<div class="login-title text-center">
					<h4>会员注册</h4>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">手机</span>
						<input type="text" class="form-control" id="registerPhone" name="phoneNum" placeholder="手机号码" maxlength="20">
					</div>
				</div>
				<span id="userRegister" style="color: red" hidden="hidden"></span>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<table>
							<tr>
								<td>
									<input class="btn btn-primary" id="regiohonebtn" type="button" value="验证手机" />
								</td>
								<td>
									<input type="text" id="registerPhoneyzm" name="registerPhoneyzm" class="form-control" placeholder="验证码" maxlength="6">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">会员昵称</span>
						<input type="text" class="form-control" name="userName" placeholder="昵称长度不大于10" maxlength="10">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">注册邮箱</span>
						<input type="text" class="form-control" name="email" placeholder="输入正确的邮箱" maxlength="30">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">登录密码</span>
						<input type="password" id="password" name="password" class="form-control" placeholder="输入登录密码" maxlength="20">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">重复密码</span>
						<input type="password" id="password2" class="form-control" placeholder="重复输入一次密码" maxlength="20">
					</div>
				</div>
				<span id="userpassword" style="color: red" hidden="hidden"></span><br>
				<div class="form-group">
					<div class="col-xs-14">
						<input type="submit" id="checksubbtn" class="btn btn-lg btn-success btn-block" value="提交" />
					</div>
				</div>
			</form>
		</div>
	</div>

	<div style="height: 50px"></div>
	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #0b6070">
			<ul class="nav text-center">
				<li role="presentation" class="col-xs-3 active" style="padding: 0px;">
					<a href="http://www.eshou360.com" style="color: #fff">
					<i style="color: #fff" class="glyphicon glyphicon-home"></i><br>主页</a>
				</li>
				<li role="presentation" class="col-xs-3 active" style="padding: 0px; color: #fff">
					<a target="_blank" href="http://form.mikecrm.com/yJPdFL" style="color: #fff"><i
						style="color: #fff" class="glyphicon glyphicon-plus-sign"></i><br>加盟</a>
				</li>
				<li role="presentation" class="col-xs-3 active" style="padding: 0px; color: #fff">
					<a href="ObligMsg?method=3000" style="color: #fff">
					<i style="color: #fff" class="glyphicon glyphicon-share"></i><br>发布</a>
				</li>
				<li role="presentation" class="col-xs-3 active" style="padding: 0px; color: #fff">
					<a href="om?method=410" style="color: #fff">
					<i style="color: #fff" class="glyphicon glyphicon-user"></i><br>登录|注册</a>
				</li>
			</ul>
		</nav>
	</div>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/register/register.js"></script>
	<script type="text/javascript">
	/**
	 * 验证密码一致性
	 */
	function checkPassword2() {
		var password = $("#password").val();
		var password2 = $("#password2").val();
		if(password != password2) {
			$("#userpassword").show();
			$("#userpassword").text('两次输入的密码不一致!');
			//$("#checksubbtn").attr("disabled", "disabled");
		} else {
			$("#userpassword").hide();
			//$("#checksubbtn").removeAttr("disabled");
			return true;
		}
		if(!checkNull(password)) {
			$("#userpassword").show();
			$("#userpassword").text('密码不能为空!');
		} else if(!checkLegalChar(password)) {
			$("#userpassword").show();
			$("#userpassword").text('输入有误，密码由6-20位的的字符或数字组成!');
		} else {
			$("#userpassword").hide();
			return true;
		}
		return false;
	};
	$("#password2").blur(checkPassword2);
	
	function checkSub(){
		var password = $("#password").val();
		var password2 = $("#password2").val();
		if(password != password2) {
			alert("两次输入的密码不一致!");
			return false;
		}else if(!checkLegalChar(password)) {
			$("#userpassword").show();
			$("#userpassword").text('输入有误，密码由4-20位的的字符或数字组成!');
		}
	}
	
	$(document).ready(function () {
    	if (${not empty registerError}) {
			alert('${registerError}');
		}
    });
	</script>
</body>
</html>
