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
                   
                           <form class="form-horizontal m-t" id="signupForm">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">找回方式：</label>
                                <div class="col-sm-8">
                                      <div class="radio radio-info radio-inline">
                                        <input type="radio" id="mailback1" value="option1" name="mailback1"  >
                                        <label for="mailback1">通过注册邮箱找回 </label>
                                    </div>
                                    <div class="radio radio-inline">
                                        <input type="radio" id="phoneback1" value="option2" name="phoneback1" checked="checked">
                                        <label for="phoneback1"> 通过注册手机找回 </label>
                          </div>
                                </div>
                            </div>
                         <div class="form-group">
                                <label class="col-sm-3 control-label">注册手机：</label>
                                  <div class="col-sm-8">
                                    <div class="row">
                                       <div class="col-sm-8">
                                    <input id="userPhone" name="userPhone" class="form-control" type="text" placeholder="注册手机">   
                                       </div>
                                       <div class="col-sm-4">
                                     <button id="regbakmailsend" type="button" class="btn btn-primary" onclick="sendMail()" style="display: none">发送邮件</button><button type="button" id="regbakphonesend" class="btn btn-primary" onclick="sendPhone()" >发送短信</button>  
                                       </div>
                                    </div>
                                  </div>
                          </div>
                           
                           <!-- 默认发送邮件先隐藏 -->
                           <div class="form-group" style="display:none" >
                                <label class="col-sm-3 control-label">注册邮箱：</label>
                                  <div class="col-sm-8">
                                  <div class="row">
                                       <div class="col-sm-8">
                                    <input id="regbakmail" type="text" placeholder="注册邮箱" class="form-username form-control" name="backinputEmail1">   
                                       </div>
                                       <div class="col-sm-4">
                                     <button id="regbakmailsend" type="button" class="btn btn-primary" onclick="sendMail()">发送邮件</button>  
                                       </div>
                                    </div>
                                    
                                  </div>
                           </div>
                           <div class="form-group">
                                <label class="col-sm-3 control-label">用户：</label>
                                <div class="col-sm-8">
                                    <input id="firstname" name="firstname" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">验证码：</label>
                                <div class="col-sm-8">
                                    <input id="firstname" name="firstname" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">新密码：</label>
                                <div class="col-sm-8">
                                    <input id="firstname" name="firstname" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                </div>
                            </div>
                        </form>
                             
                  
                    </div>
                </div>
            </div>
        </div>
                 
                 
                 
                 
                </div>

            </div>
            
			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script>
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
    
    </script>
</body>
</html>