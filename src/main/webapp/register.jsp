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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>快易收-欢迎您登陆快易收债权管理系统</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">
    <jsp:include page="/common/_meta.jsp"></jsp:include>
    <jsp:include page="/common/_script.jsp"></jsp:include>
</head>

<body class="gray-bg top-navigation">
    <div id="wrapper">
    <div id="page-wrapper" class="gray-bg">
    <jsp:include page="/common/_menu.jsp"></jsp:include>
    <!-- 用户登录begin -->
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>注册表单 </h5>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-1"></div>
                            <div class="col-sm-5 b-r">
                                <p>欢迎您注册快易收债权管理系统会员</p>    
                                <span class="label label-warning">${message }</span><br/><br/>                 
                                <form action="${basePath }user/register"  method="post" id="registForm"  role="form" target="_self">
                                   <div class="form-group">
                                        <label>会员类型</label> 
                                        <select id="userType" name="userType" class="form-control" onchange="changeUserType()">
													<option value="0">债权方</option>
													<option value="1">处置方</option>
										</select>
									</div>
                                    <div class="form-group">
                                        <label>用户名</label>
                                        <input type="text" id="nickname" name="nickname" placeholder="请输入您用户名" class="form-control"  >
                                    </div>
                                    <div class="form-group">
                                        <label>密码</label>
                                        <input type="password" id="userPwd" name="userPwd" placeholder="请输入密码" class="form-control"  >
                                    </div>
					                <div class="form-group">
					              	    <label>手机</label>
					                    <input type="phone" id="userPhone" name="userPhone" class="form-control" size="32"  placeholder="请输入有效手机号码"  />
					                    <input id="regiohonebtn" name="regiohonebtn" type="button" class="btn btn-sm btn-primary" value="验证手机"  onclick="registPhone()"/>
					                    <input type="hidden" id="phoneNum" name="phoneNum">
					                </div>
					                <div class="form-group">
					                    <label>验证码</label>
					                    <input type="text" id="registerZm" name = "registerZm" class="form-control" placeholder="验证码" >
					                </div>						             
					                <div class="form-group">
					                    <label>Email</label>
					                    <input type="email"  id="userEmail" name="userEmail" class="form-control"  placeholder="请输入有效的Email" />
					                </div>
                                    <div>
                                        <label id="userType_fb" > <input type="checkbox"  name="isAgreeProtocol" class="i-checks"><a href="${basePath }hplus/uploadFile/docs/fwxy_fbb.docx">我同意《用户服务协议》（债权发布方版）</a></label>
                                        <label id="userType_cz" style="display: none"> <input type="checkbox" name="isAgreeProtocol" class="i-checks"><a href="${basePath }hplus/uploadFile/docs/fwxy_czb.docx">我同意《用户服务协议》（债权处置方版）</a></label>
                                    </div>
                                    <div>
                                        <button class="btn btn-sm btn-primary  m-t-n-xs" type="submit"  id="regist"><strong>注册</strong></button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-sm-6">
                                <h4>你已经是新会员了！</h4>
                                <p>您可以跳转到登录页面</p>
                                <p class="text-center">
                                    <a href="login.jsp"><i class="fa fa-sign-in big-icon"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 用户登录end -->
    
    </div>
    </div>
    <!-- 底部文件 -->
	<jsp:include page="/common/_footer.jsp"></jsp:include>

</body>
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

function changeUserType(){
	var userType =$("#userType").val();
	if(userType==0){
		$("#userType_fb").show();
		$("#userType_cz").hide();
	}else{
		$("#userType_fb").hide();
		$("#userType_cz").show();
	}
}



$(function(){
    var validate = $("#registForm").validate({
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
        	nickname:{
                required:true
            },
            userPwd:{
                required:true
            },
            userEmail:{
                required:true,
                email:true
            },
            userPhone:{
                required:true,
                rangelength:[3,11]
            },
            registerZm:{
            	required:true,
                equalTo:"#phoneNum"
            }                    
        },
        messages:{
        	nickname:{
                required:"必填"
            },
            userPwd:{
                required:"必填"
            },
            userEmail:{
                required:"必填",
                email:"E-Mail格式不正确"
            },
            userPhone:{
                required: "不能为空",
                rangelength: $.validator.format("电话号码最小长度:{0}, 最大长度:{1}。")
            },
            registerZm:{
            	required:"必填",
                equalTo:"输入的验证码有错误！"
            }                                    
        }
    });    
});

</script>

</html>