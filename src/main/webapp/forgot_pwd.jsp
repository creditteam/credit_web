<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>快易收-您的债权管理专家</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>
    <jsp:include page="/common/_script.jsp"></jsp:include>
</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
            <div class="container">
            <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                   <div class="ibox-title">
                        <h5>找回用户密码</h5>
                    </div>
                    <div class="ibox-content">
                    
                      <div class="row">
											<!-- form表单开始 -->
											<form action="${basePath}user/passBack"  method="POST" role="form" id="getBackForm" target="_self">
											<div class="form-group">
												<label>找回方式:</label>
												<div class="row">
												<div class="col-sm-4">
													<div class="radio radio-info radio-inline">
														<input type="radio" id="mailback1" value="option1"
															name="mailback1" onclick="sendType(1)"> <label
															for="mailback1">通过注册邮箱找回 </label>
													</div>
												</div>
												<div class="col-sm-4">
													<div class="radio radio-inline">
														<input type="radio" id="phoneback1" value="option2"
															name="mailback1" onclick="sendType(2)" checked="checked">
														<label for="phoneback1"> 通过注册手机找回 </label>
													</div>
												</div>
												</div>
											</div>
										
										<div class="form-group" id="phoneDev">
												<label>注册手机:</label>
												<div class="row">
													<div class="col-sm-8">
														<input id="userPhone" name="userPhone"
															class="form-control" type="text" placeholder="注册手机">
													</div>
													<div class="col-sm-4">
														<input class="btn btn-primary" id="regiohonebtn"
															type="button" value="发送验证码" onclick="sendPhone()" /> 
															<input type="hidden" id="phoneNum" />
													</div>
												</div>
											</div>

											<div class="form-group" style="display: none" id="emailDev">
												<label>注册邮箱:</label>
												<div class="row">
													<div class="col-sm-8">
														<input id="regbakmail" type="text" placeholder="注册邮箱"
															class="form-username form-control" name="backinputEmail1">
													</div>
													<div class="col-sm-4">
														<button id="regbakmailsend" type="button"
															class="btn btn-primary" onclick="sendMail()">发送邮件</button>
													</div>
												</div>
										</div>

										<div class="form-group">
											<label>用户:</label>
											<input id="firstname" name="firstname" class="form-control" type="text">
										</div>

										<div class="form-group">
											<label>验证码:</label> <input id="registerZm" name="registerZm"
												class="form-control" type="text">
										</div>
										<div class="form-group">
											<label>新密码:</label> <input id="newpassowrd"
												name="newpassowrd" class="form-control" type="text">
										</div>
										<div class="form-group">
											<button class="btn btn-primary" type="submit">提交</button>
										</div>
									</div>
									</from>
                            <!-- form表单结束 -->
                           </div>                        
                  
                    </div>
                </div>
            </div>
        </div>
                 
                 
                 
                 
                </div>

            </div>
            
			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script>
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

    function sendType(num){
    	if(num==1){
    		$("#emailDev").show();
    		$("#phoneDev").hide();
    	}else{
    		$("#emailDev").hide();
    		$("#phoneDev").show();
    	}
    }
    
    
    
    $(function(){
        var validate = $("#getBackForm").validate({
            debug: false, //调试模式取消submit的默认提交功能   
            errorClass: "label.error", //默认为错误的样式类为：error   
            focusInvalid: false, //当为false时，验证无效时，没有焦点响应  
            onkeyup: false,   
            submitHandler: function(form){   //表单提交句柄,为一回调函数，带一个参数：form   
                form.submit();   //提交表单   
            },
            invalidHandler: function(){
            	alert("表单验证错误");
            },
            rules:{
                newpassowrd:{
                    required:true,
                },
                registerZm:{
                	required:true,
                    equalTo:"#phoneNum"
                }                    
            },
            messages:{
                newpassowrd:{
                    required: "不能为空"
                },
                registerZm:{
                	required:"必填",
                    equalTo:"输入的验证码有错误！"
                }                                    
            }
        });    
    });

    </script>
</body>
</html>