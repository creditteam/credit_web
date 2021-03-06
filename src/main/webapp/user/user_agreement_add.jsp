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

    <title>快易收-专注债权处置</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
            <div class="container">
            <div class="row">
            <jsp:include page="/user/user_left.jsp"></jsp:include>
            <div class="col-sm-9">
                <div class="ibox float-e-margins">
                   <div class="ibox-title">
                        <h5>债权协议-上传协议</h5>
                    </div>
                    <div class="ibox-content">
                   
                          <form class="form-horizontal m-t" id="signupForm" action="${basePath }agreement/save" method="post" target="_self"  enctype="multipart/form-data">
                          <input type="hidden"  name="creditId" value="${credit.id}"/>
                          <c:if test="${credit.crStatus==2 }">
                                    <input type="hidden"  name="agreeType" value="1"/>
                          </c:if>
                          <c:if test="${credit.crStatus==3}">
                                     <input type="hidden"  name="agreeType" value="2"/>
                          </c:if>
                          <c:if test="${credit.crStatus==4 }">
                                     <input type="hidden"  name="agreeType" value="3"/>
                          </c:if>
                          <b style="margin-left: 30px"><font color="blue">协议信息</font></b>
                 		 <hr>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">协议类型：</label>
                                <div class="col-sm-8">
                                    <select  name="agreeType" class="form-control" required="required" disabled="disabled">
										<option value="1" <c:if test="${credit.crStatus==2 }">selected="selected"</c:if>>居间服务协议(前期)</option>
										<option value="2" <c:if test="${credit.crStatus==3 }">selected="selected"</c:if>>处置协议</option>
										<option value="3" <c:if test="${credit.crStatus==4 }">selected="selected"</c:if>>居间服务协议(后期)</option>
									</select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">债务凭证：</label>
                                <div class="col-sm-8">
                                     <input class="form-control" type="file" name="uploadFiles" accept=".jpg,.png,.jpeg,.gif,.bmp"/>
                                     <div id="addFileUpload"></div>
                                     <span class="help-block m-b-none">
                                     	<button type="button" class="btn btn-white btn-xs" onclick="addFileUpload()"><span class="glyphicon glyphicon-plus-sign">继续添加</span></button>
                                     </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">提交</button>
                                    <button class="btn btn-primary btn-white" type="button" onclick="goToBack()">取消</button>
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
    
	<script type="text/javascript">
	function goToBack(){
		window.location.href = "${basePath }credit/userCreditList";
	}
	function addFileUpload(){
		$("#addFileUpload").append('<input class="form-control" type="file" name="uploadFiles" accept=".jpg,.png,.jpeg,.gif,.bmp"/>');
	}
</script>
</body>

</html>