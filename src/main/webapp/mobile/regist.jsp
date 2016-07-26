<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

    <head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>快易收债权管理|注册</title>
<Link Rel="icon" href="img/kuaiyishou.ico" type=”image/x-icon”>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="css/home.css">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>快易收</strong> 注册</h1>
                            <div class="description">
                            	
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-center">
                        			<h3>欢迎您注册快易收债权管理系统会员</h3>
                            		
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form method="POST" action="Register" class="form-horizontal" role="form">
  									<div class="form-group">
  									<table style="border-collapse:collapse;"><tr>
  									<td><label for="input1" class="control-label">会员类型:</label></td>
  									<td><select id="shenfensel" name="shenfen" class="form-control">
                                  <option value="0">债权方</option>
                                  <option value="1">处置方</option>
                               </select></td>
  									</tr>
  									
  									<tr><td>
  									<label for="input2" class="control-label">用户名:</label>
  									</td>
  									<td><input type="text" id="registerName" name="userName" class="form-control" placeholder="用户名"></td>
  									<td><span id="unameRegister" style="color: red" hidden="hidden"></span></td>
  									</tr>
  									
  									<tr><td>
  									<label for="input2" class="control-label">密码:</label>
  									</td>
  									<td><input type="password" id="registerPass" name="password" class="form-control" placeholder="密码"></td>
  									<td><span id="passRegister" style="color: red" hidden="hidden"></span></td>
  									</tr>
  									
  									<tr><td>
  									<label for="inputphone3" class="control-label">手机:</label>
  									</td>
  									<td><input type="text" id="registerPhone" name = "phoneNum" class="form-control" placeholder="手机"></td>
  									<td><input id="regiohonebtn" type="button" class="btn btn-default" value="验证手机" /></td>
  									</tr>
  									<tr id="phoneyzmtx" style="display: none"><td>
  									<label class="control-label">验证码:</label>
  									</td>
  									<td><input type="text" id="registerPhoneyzm" name = "registerPhoneyzm" class="form-control" placeholder="验证码"></td>
  									
  									</tr>
  									<tr><td><span id="userRegister" style="color: red" hidden="hidden"></span></td></tr>
  									<tr><td>
  									<label for="inputEmail3" class=" control-label">Email:</label>
  									</td>
  									<td><input type="email" id="registerEmail" name="emailNum" class="form-control" placeholder="请输入email" required="required" /></td>
  									<td><input id="regemailbtn" type="button" class="btn btn-default" value="验证邮箱" style="display: none"/></td>
  									
  									</tr>
  									
  									<tr><td><span id="emailRegister" style="color: red" hidden="hidden"></span></td></tr>
  									</table>
			                    	
			                        </div>
						<div class="row">
							<div id="zqfbxy"><input id="zqfbxycb" type="checkbox" checked="checked">
							<a target="_blank" href="${basePath }hplus/uploadFile/docs/fwxy_fbb.docx" style="color: #666666; margin-left: 20px">“快易收债权管理”O2O平台用户服务协议（债权发布方版）</a></div>
							<div id="zqczxy" style="display: none"><input id="zqczxycb" type="checkbox" checked="checked">
							<a target="_blank" href="${basePath }hplus/uploadFile/docs/fwxy_czb.docx" style="color: #666666; margin-left: 20px">“快易收债权管理”O2O平台用户服务协议（债权处置方版）</a></div>
						</div>
						<div class="row">
							<button id="regsubbtn" type="submit" class="btn btn-success" disabled="disabled">完成</button>
						</div>
					
					</form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>...or login with:</h3>
                        	<div class="social-login-buttons">
	                        	<a class="btn btn-link-2" href="http://www.eshou360.com">
	                        		<i class="fa fa-home"></i> 首页
	                        	</a>
	                        	<a class="btn btn-link-2" href="om?method=410" data-toggle="modal">
	                        		<i class="fa fa-user"></i> 登录
	                        	</a>
	                        	
                        	</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
<div class="subfooter" style="background-color: #0b6070; margin-top: 50px">
	<div class="main-container">
		<div class="row">
			<div class="col-md-12" style="color: #fff">
				<p class="text-center">
					Copyright © 2016 by <a target="_blank"
						href="http://www.eshou360.com">www.eshou360.com</a>.
				</p>
			</div>
		</div>
	</div>
</div>
<div style="height: 50px"></div>			
<div class="container-fluid" >
	<nav class="navbar navbar-default navbar-fixed-bottom" style="background-color: #0b6070">
	<ul class="nav text-center">
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;"><a
			href="http://www.eshou360.com" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-home"></i><br>主页</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a target="_blank" 
			href="http://form.mikecrm.com/yJPdFL" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-plus-sign"></i><br>加盟</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="ObligMsg?method=3000" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-share"></i><br>发布</a></li>
		<li role="presentation" class="col-xs-3 active" style="padding: 0px;color: #fff"><a
			href="om?method=410" style="color: #fff"><i style="color: #fff" class="glyphicon glyphicon-user"></i><br>登录|注册</a></li>
	</ul>
	</nav>
</div>
        <!-- Javascript -->
        <script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script type="text/javascript" src="js/register/register.js"></script>
         <script src="js/index.js"></script>
        <script type="text/javascript">
			$(function () {  
	              $('[data-toggle="tooltip"]').tooltip();  
	            });
	            $(function () {  
	              $('[data-toggle="popover"]').popover();  
	            });
	              
	            $(document).ready(function () {  
	                //自定义popover显示的内容  
	               $('#mypopover').popover({   
	                    html : true,
	                    
	                    title: function() {  
	                      return $("#popover-head").html();  
	                    },  
	                    content: function() {  
	                      return $("#popover-content").html();  
	                    }  
	                });    
	            });
	            
	            $(document).ready(function () {  
	                //自定义popover显示的内容  
	               $('#weixinpopover').popover({   
	                    html : true,
	                    
	                    title: function() {  
	                      return $("#weixinpopover-head").html();  
	                    },  
	                    content: function() {  
	                      return $("#weixinpopover-content").html();  
	                    }  
	                });    
	            });
	            
	            function checkUser() {
	        		if (${user.userid < 0}) {
	        			alert("请先登录系统，再发布债权信息");
	        			window.location.href="#";
	        			return false;
	        		}
	        		window.location.href="ObligMsg?method=3000";
	        		return true;
	        	}
	            
	            $(document).ready(function () {
	            	if (${not empty registerError}) {
						alert(${registerError});
					}
	            });
	            
	            function changezqsel(){
	            	var selxy = $("#shenfensel").val();
	            	if (selxy == 0) {
	            		$("#zqfbxy").css("display", "block");
	            		$("#zqczxy").css("display", "none");
	            	} else {
	            		$("#zqfbxy").css("display", "none");
	            		$("#zqczxy").css("display", "block");
	            	}
	            }
	            $("#shenfensel").change(changezqsel);
			</script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

    </body>

</html>

