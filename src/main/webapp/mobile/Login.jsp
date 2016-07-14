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
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<div class="row">
			<div class="col-xs-6">
				<img style="height: 25px" id="logo" src="${basePath}hplus/img/logo.jpg" alt="快易收">
			</div>
			<div class="col-xs-6">
				<p style="color: #5f5d5d">服务热线:4008-338-997</p>
			</div>
		</div>
		<div class="login-title text-center">
			<h1>
				<small>登录快易收</small>
			</h1>
		</div>
		<div class="form">
			<form action="#" method="post">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon">
								<span class="glyphicon glyphicon-user"></span>
							</span>
							<input type="text" id="username" name="username" class="form-control" placeholder="用户名">
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
							<small>忘记密码？</small><a href="javascript:void(0)" data-toggle="modal" data-target="#oblsModal"><small>找回</small></a>
						</p>
					</div>
					<div class="col-xs-6 link">
						<p class="text-center remove-margin">
							<small>还没注册?</small> <a href="${basePath }mobile/mregist.jsp"><small>注册</small></a>
						</p>
					</div>
				</div>
			</form>
		</div>
	</div>

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="oblsModal" tabindex="-1" role="dialog" 
   aria-labelledby="oblModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="oblModalLabel">
               	密码找回
            </h4>
         </div>
         <div class="modal-body">
           	

<span class="list-group-item active">
填写新密码
</span>

<div class="list-group-item">
<table><tr>

<td><input id="regbakphone" type="text" placeholder="注册手机" class="form-username form-control" name="backinputPhone1" ></td>
<td><button type="button" id="regbakphonesend" class="btn btn-primary" onclick="sendPhone()" >发送短信</button></td>
</tr></table>
</div>

<div class="list-group-item">
<table><tr>

<td><input type="text" placeholder="验证码" class="form-username form-control" id="backinputyzm" name="backinputyzm" disabled="disabled"></td>
</tr>
<tr><td><span class="text-left">请勿关闭此页面防止验证码失效</span></td></tr>
</table>

</div>
<div class="list-group-item">
<table><tr>

<td><input type="text" placeholder="新密码" class="form-username form-control" id="backinputpass1" name="backinputpass1"></td>

</tr>
<tr><td><span>重置密码后，请使用新密码登录系统</span></td></tr></table>

</div>

<input type="hidden" id="lsg14" />

         </div>
         <div class="modal-footer">
         
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="sendResetCode()">
               提交
            </button>
            
            <button type="button" class="btn btn-primary" data-dismiss="modal">
               关闭
            </button>
         </div>
      </div>
</div>
</div> 

	<jsp:include page="mobile_footer.jsp"></jsp:include>

	<!-- Javascript -->
</body>
</html>
