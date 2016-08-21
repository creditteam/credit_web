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
									<h5>
									<c:if test="${agreeType==1 }">
									债权协议-确认居间服务协议(前期)
									</c:if>
								    <c:if test="${agreeType==3 }">
									债权协议-确认居间服务协议(后期)
									</c:if>
									</h5>
								</div>
								 <div class="ibox-content">
									<form class="form-horizontal m-t" id="signAgreeForm" action="${basePath }agreement/updStatus" method="post" target="_self" enctype="multipart/form-data">
										<input type="hidden" name="userId" value="${userId}">
										<input type="hidden" name="creditId" value="${creditId}">
										<input type="hidden" name="agreeType" value=${agreeType }>
										<div class="form-group">
											<div class="col-sm-12" style="font-size:14px">
												<c:forEach items="${agreeList}" var="item">
													<a href="${basePath}${item.agreeSample}" id="downDocx" target="_self">
									<c:if test="${agreeType==1 }">
									《居间服务协议(前期)》
									</c:if>
								    <c:if test="${agreeType==3 }">
									《居间服务协议(后期)》
									</c:if>
													</a>
													<button type="button" class="btn btn-success btn-sm" onclick="downDocs('${basePath}${item.agreeSample}')">下载协议</button>
												</c:forEach>
											</div>
										</div>
										
										<div class="form-group">
											<hr>
											<table width="98%">
												<tr>
													<td align="left">&nbsp;&nbsp;&nbsp;
														<b><label for="signStatus"><input type="checkbox" name="signStatus" id="signStatus" value="1" />
									<c:if test="${agreeType==1 }">
									同意&lt;居间服务协议(前期)&gt;
									</c:if>
								    <c:if test="${agreeType==3 }">
									同意&lt;居间服务协议(后期)&gt;
									</c:if>
														
														</label></b>
														<span id="titleSub"></span>
													</td>
													<td align="right"><button type="button" class="btn btn-default" onclick="goToBack()">返回</button>&nbsp;
														<button type="button" class="btn btn-primary" onclick="checkAgree()">确定</button>
													</td>
												</tr>
											</table>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="/common/_footer.jsp"></jsp:include>
		</div>
	</div>
	<div class="modal fade" id="example" tabindex="-1" role="dialog" data-backdrop="static"
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
              	 确认提示
            </h4>
         </div>
         <div class="modal-body">
            	确认签订《居间服务协议(前期)》吗?
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消
            </button>
            <button type="button" class="btn btn-primary" onclick="submitData()">
               	确定
            </button>
         </div>
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
<jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript">
    	function downDocs(url){
    		window.location.href = url;
    	}
    	function goToBack(){
    		window.location.href = "${basePath }credit/userCreditList";
    	}
    	function checkAgree(){
    		var signStatus = $("#signStatus").is(':checked');
    		if(!signStatus){
    			$("#titleSub").html("<font color='red'>必须先勾选同意</font>");
    			return false;
    		}
    		
    		$("#example").modal('show');
    	}
    	function submitData(){
    		$("#signAgreeForm").submit();
    	}
    </script>
</body>

</html>