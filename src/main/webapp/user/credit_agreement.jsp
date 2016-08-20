<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
	<input type="hidden" name="userId" value="${userId}">
	<input type="hidden" name="creditId" value="${creditId}">
	<div class="modal-header">
		<div class='bootstrap-dialog-header'>
			<div class='bootstrap-dialog-close-button'
				style='display: block;'>
				<button class='close' data-dismiss='modal' aria-label='Close'>×</button>
			</div>
			<div class='bootstrap-dialog-title'><h4>协议确认</h4></div>
		</div>
	</div>
	<div class="modal-body">
		<div class="container-fluid">
             <div class="form-group">
                   <div class="col-sm-12">
                     	协议内容
                   </div>
             </div>
		</div>
	</div>
	<div class="modal-footer">
		<label for="signStatus" style="float: left">
			<input type="checkbox" name="signStatus" id="signStatus" value="1"/>同意&lt;居间服务协议(前期)&gt;
			<span id="titleSub"></span>
		</label>
		<button type="button" id="cancelWin" class="btn btn-default" data-dismiss="modal">取消</button>
		<button type="button" class="btn btn-primary" onclick="checkAgree()">确定</button>
	</div>
    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript">
    	function checkAgree(){
    		alert(1);
    		varr signStatus = $("#signStatus").val();
    		if(!signStatus || signStatus == ""){
    			$("#titleSub").html("<font color='red'>必须先勾选同意</font>");
    			return false;
    		}
    		$.ajax({
    			url : 'agreement/updStatus',
    			async : false,
    			data : {
    				userId : '${userId}',
					creditId : '${creditId}'
    			},
    			type : "POST",
    			success : function(data) {
		    		$("#cancelWin").click();
    			},
    			error : function() {
    				alert("更新数据失败");
    			}
    		});
    	}
    </script>
</body>

</html>