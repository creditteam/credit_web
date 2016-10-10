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
				<span class="label label-warning">${message }</span><br/><br/>  
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
									<input type="text" id="registerZm" name="registerZm" class="form-control" readonly="readonly" placeholder="验证码" maxlength="6">
								</td>
								<td>
									<input class="btn btn-primary" id="regiohonebtn" type="button" value="发送验证码" onclick="registPhone()"/>
									<input type="hidden" id="phoneNum"/>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">会员昵称</span>
						<input type="text" class="form-control" name="userEmail" placeholder="请输入您的邮箱" maxlength="20">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<span class="input-group-addon">登录密码</span>
						<input type="password" id="userPwd" name="userPwd" class="form-control" placeholder="输入登录密码" maxlength="30">
					</div>
				</div>
				
				<div class="form-group">
					<div class="input-group input-group-xs">
						<div class="checkbox" id="zqfbxy">
	                        <label>
	                        	<input id="zqfbxycb" name="zqfbxycb" type="checkbox"/>
	                        	<a target="_blank" href="${basePath }hplus/uploadFile/docs/fwxy_fbb.docx" style="color: #666666; margin-left: 20px">“快易收债权管理”O2O平台用户服务协议（债权发布方版）</a>
	                        </label>
	                    </div>
	                    <div class="checkbox" id="zqczxy" style="display: none">
	                        <label>
	                        	<input id="zqczxycb" name="zqfbxycb" type="checkbox">
								<a target="_blank" href="${basePath }hplus/uploadFile/docs/fwxy_czb.docx" style="color: #666666; margin-left: 20px">“快易收债权管理”O2O平台用户服务协议（债权处置方版）</a>
	                        </label>
	                    </div>
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
		$("#registerZm").removeAttr("readonly");
		InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
		$.ajax({
			 type: "POST", //用POST方式传输
			 dataType: "json", //数据格式:JSON
			 url: '${basePath}user/sendPhone', //目标地址
			 data: {"phoneNum":phone},
			 error: function (XMLHttpRequest, textStatus, errorThrown) {
				 alert("手机号码填写有误或系统繁忙，请再次尝试");
			 },
			 success: function (msg){
				 if (msg.result == "true") {
					 $("#phoneNum").val(msg.phoneInt);
				} else {
					alert("短信发送失败!");
				}
			 }
		 });
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
	function changezqsel(){
    	var selxy = $("#userType").val();
    	if (selxy == 0) {
    		$("#zqfbxycb").attr("checked","checked");
    		$("#zqczxycb").attr("checked",false);
    		$("#zqfbxy").css("display", "block");
    		$("#zqczxy").css("display", "none");
    	} else {
    		$("#zqfbxycb").attr("checked",false);
    		$("#zqczxycb").attr("checked","checked");
    		$("#zqfbxy").css("display", "none");
    		$("#zqczxy").css("display", "block");
    	}
    }
    $("#userType").change(changezqsel);
    $("#zqfbxycb").attr("checked","checked");
    
    function submitRegit(){
    	var bootstrapValidator = $("#registForm").data('bootstrapValidator');
   	    bootstrapValidator.validate();
   	    if(bootstrapValidator.isValid()){
   	    	var selxy = $("#userType").val();
   	    	if (selxy == 0) {
   	    		if($("#zqfbxycb").attr("checked") != 'checked'){
   	    			alert("需要同意用户服务协议才能完成注册");
   	    			return false;
   	    		}
   	    	} else {
   	    		if($("#zqczxycb").attr("checked") != "checked"){
   	    			alert("需要同意用户服务协议才能完成注册");
   	    			return false;
   	    		}
   	    	}
   	    	$("#registForm").submit();
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
	                    }
	                }
	            },
	            userEmail: {
	                validators: {
	                    notEmpty: {
	                        message: '用户昵称请输入邮箱!'
	                    }
	                }
	            },
	            userPwd: {
	                validators: {
	                	notEmpty: {
	                        message: '密码不能为空'
	                    }
	                }
	            },
	            registerZm: {
	            	validators: {
	            		notEmpty: {
	                        message: '验证码不能为空'
	                    },
	                    callback: {
	                        message: '验证码错误',
	                        callback: function(value, validator) {
	                        	var phoneNum = $("#phoneNum").val();
	                            if(phoneNum != null && phoneNum != ''){
		                            return value == phoneNum;
	                            }
	                        }
	                    }
	            	}
	            }
	        }
	    });
    });
	</script>
</body>
</html>
