<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>快易收债权管理|登录</title>
	<Link Rel="icon" href="${basePath}hplus/img/kuaiyishou.ico" type=”image/x-icon”>
	<link rel="stylesheet" href="${basePath}hplus/css/bootstrap.min.css">
	<link rel="stylesheet" href="${basePath}hplus/css/font-awesome.min.css">
	<script src="${basePath}hplus/js/jquery.min.js"></script>
	<script src="${basePath}hplus/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.input-group {
			margin: 0px 0px 30px 0px !important;
		}
		.link p {
			line-height: 20px;
			margin-top: 30px;
		}
	</style>
</head>

<body>
	<div class="main-container" style="height: 100%">
		<jsp:include page="mobile_top_logo.jsp"></jsp:include>
		<div class="login-title text-center">
			<h1>
				<small>登录快易收</small>
			</h1>
		</div>
		<div class="form">
			<form role="form" action="${basePath }user/login" method="post" target="_self">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</span>
							<input type="text" id="loginName" name="loginName" class="form-control" placeholder="输入Email或手机">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-lock"></span>
							</span>
							<input type="password" id="password" name="password" class="form-control" placeholder="密码">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<button type="submit" class="btn btn-lg btn-primary btn-block">
							<span class="glyphicon glyphicon-off"></span>登录
						</button>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-6 link">
						<p class="text-center remove-margin">
							<small>忘记密码？</small><a href="javascript:void(0)" data-toggle="modal" data-target="#oblsModal">找回</a>
						</p>
					</div>
					<div class="col-xs-6 link">
						<p class="text-center remove-margin">
							<small>还没注册?</small><a href="${basePath }mobile/ml_regist.jsp">注册</a>
						</p>
					</div>
				</div>
			</form>
		</div>
	</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="oblsModal" tabindex="-1" role="dialog" data-backdrop="static"
	aria-labelledby="oblModalLabel" aria-hidden="true">
	<form action="${basePath}user/passBack" class="bs-example bs-example-form" method="POST" role="form" id="getBackForm">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="oblModalLabel">密码找回</h4>
			</div>
			<div class="modal-body">

				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">注册手机</span>
						<input type="text" class="form-control" id="userPhone" name="userPhone" placeholder="手机号码" maxlength="16">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<table>
							<tr>
								<td>
									<input type="text" id="registerZm" name="registerZm" class="form-control" disabled="disabled" placeholder="验证码" maxlength="6">
								</td>
								<td>
									<input class="btn btn-primary" id="regiohonebtn" type="button" value="发送验证码" onclick="sendPhone()"/>
									<input type="hidden" id="phoneNum"/>
								</td>
							</tr>
							<tr>
								<td><span class="text-left">请勿关闭此页面防止验证码失效</span></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">新密码</span>
						<input type="password" class="form-control" id="newpassowrd" name="newpassowrd" placeholder="重置后,请使用新密码登录" maxlength="16">
					</div>
					
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="subBackInof()">提交</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
	</form>
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

<script type="text/javascript">

var InterValObj; //timer变量，控制时间
var count = 5; //间隔函数，1秒执行
var curCount = 40;//当前剩余秒数
function sendPhone(){
	var phone = $("#userPhone").val();
	if(phone == ''){
		alert('请输入手机号');
		return false;
	}
	$("#registerZm").removeAttr("disabled");
	InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
	//调用发送短信
	$.ajax({
		 type: "POST", //用POST方式传输
		 dataType: "json", //数据格式:JSON
		 url: '${basePath}user/sendPhone', //目标地址
		 data: {"phoneNum":phone},
		 error: function (XMLHttpRequest, textStatus, errorThrown) {
			 alert("手机号码填写有误或系统繁忙，请再次尝试");
		 },
		 success: function (msg){
			 if (msg.result = "true") {
				 $("#phoneNum").val(msg.phoneInt);
			} else {
				alert("短信发送失败!");
			}
		 }
	 });
}

function subBackInof(){
	var phoneNum = $("#phoneNum").val();
	var registerZm = $("#registerZm").val();
	var phone = $("#userPhone").val();
	var newpassowrd = $("#newpassowrd").val();
	
	if(phone == ''){
		alert('请输入手机号');
		return false;
	}
	if(phoneNum ==''){
		alert("请输入验证码!");
		return false;
	}
	if(phoneNum !='' && phoneNum != registerZm){
		alert("验证码输入错误!");
		return false;
	}
	if(newpassowrd == ''){
		alert("请输入新密码!");
		return false;
	}
	$("#getBackForm").submit();
}

function SetRemainTime() {
    if (curCount == 0) {                
        window.clearInterval(InterValObj);//停止计时器
        $("#regiohonebtn").removeAttr("disabled");//启用按钮
        $("#regiohonebtn").val("发送验证码");
        curCount = 40;
    }
    else {
        curCount--;
        $("#regiohonebtn").val(curCount);
        $("#regiohonebtn").attr("disabled", "disabled");
    }
};
$(function (){
	if('${result}' && '${result}' !== ''){
		alert('${result}');
	}
});
</script>
</body>
</html>
