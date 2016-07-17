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
<link href="${basePath }hplus/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="${basePath }hplus/js/bootstrapValidator.min.js"></script>
<script src="${basePath }hplus/js/bootstrap_zh_CN.js"></script>
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
			<form action="${basePath }user/register" class="bs-example bs-example-form" method="POST" role="form" id="registForm">
				<div class="login-title text-center">
					<h4>会员注册</h4>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">会员类型</span>
						<select id="userType" name="userType" class="form-control">
							<option value="0">债权方</option>
							<option value="1">处置方</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">手机</span>
						<input type="text" class="form-control" id="userPhone" name="userPhone" placeholder="手机号码" maxlength="16">
					</div>
				</div>
				<span id="userRegister" style="color: red" hidden="hidden"></span>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<table>
							<tr>
								<td>
									<input type="text" id="registerZm" name="registerZm" class="form-control" disabled="disabled" placeholder="验证码" maxlength="6">
								</td>
								<td>
									<input class="btn btn-primary" id="regiohonebtn" type="button" value="发送验证码" onclick="registPhone()"/>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">会员昵称</span>
						<input type="text" class="form-control" name="nickname" placeholder="昵称长度不大于10" maxlength="10">
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">注册邮箱</span>
						<input type="text" class="form-control" name="userEmail" placeholder="请输入正确的邮箱" maxlength="30">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">登录密码</span>
						<input type="password" id="userPwd" name="userPwd" class="form-control" placeholder="输入登录密码" maxlength="20">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">确认密码</span>
						<input type="password" id="userPwd2" name="userPwd2" class="form-control" placeholder="重复输入一次密码" maxlength="20">
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
	<jsp:include page="mobile_footer.jsp"></jsp:include>
	<script type="text/javascript">
	var InterValObj; //timer变量，控制时间
	var count = 5; //间隔函数，1秒执行
	var curCount = 40;//当前剩余秒数
	function registPhone(){
		
		var phone = $("#userPhone").val();
		if(phone == ''){
			alert('请输入手机号');
			return false;
		}
		$("#registerZm").removeAttr("disabled");
		InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
		
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
	}
	
	$(document).ready(function () {
		$('#registForm').bootstrapValidator({
	        message: 'This value is not valid',
	        feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	        	userPhone: {
	                message: '无效手机号码',
	                validators: {
	                    notEmpty: {
	                        message: '手机号不能为空'
	                    },
	                    phone : {
	                    	message: '手机号输入不正确',
	                    	country: 'CN'
	                    },
	                    threshold :  10 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
	                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                         url: '${basePath }user/validaPhone',//验证地址
	                         message: '该手机号已注册',//提示消息
	                         delay :  1000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax
	                         type: 'POST'
	                     }
	                }
	            },
	            nickname: {
	                validators: {
	                    notEmpty: {
	                        message: '用户昵称不能为空!'
	                    }
	                }
	            },
	            userEmail: {
	                validators: {
	                    notEmpty: {
	                        message: '注册邮箱不能为空'
	                    },
	                    emailAddress: {
	                        message: '请输入正确的邮箱!'
	                    },
	                    threshold :  7 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
	                    remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                         url: '${basePath }user/validaEmail',//验证地址
	                         message: '该邮箱已注册',//提示消息
	                         delay :  1000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax
	                         type: 'POST'//请求方式
	                         /**自定义提交数据，默认值提交当前input value
	                          *  data: function(validator) {
	                               return {
	                                   password: $('[name="passwordNameAttributeInYourForm"]').val(),
	                                   whatever: $('[name="whateverNameAttributeInYourForm"]').val()
	                               };
	                            }
	                          */
	                     }
	                }
	            },
	            userPwd: {
	                validators: {
	                	notEmpty: {
	                        message: '密码不能为空'
	                    },
	                    identical: {
	                        field: 'userPwd2',
	                        message: '密码和确认密码不一致!'
	                    }
	                }
	            },
	            userPwd2: {
	                validators: {
	                	notEmpty: {
	                        message: '重复密码不能为空'
	                    },
	                    identical: {
	                        field: 'userPwd',
	                        message: '密码和确认密码不一致!'
	                    }
	                }
	            },
	            registerZm: {
	            	validators: {
	            		notEmpty: {
	                        message: '验证码不能为空'
	                    }
	            	}
	            },
	            submitHandler: function (validator, form, submitButton) {
	                alert("submit");
	            }
	        }
	    });
    });
	</script>
</body>
</html>
