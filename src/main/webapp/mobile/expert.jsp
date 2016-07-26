<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>快易收债权管理|专家顾问库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<jsp:include page="mobile_meta.jsp"></jsp:include>
	
  </head>
  <body>
    <div class="main-container" id="portfolio">
    	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
		<div class="container"><p class="lead text-center" style="font-weight: 900">专家顾问库</p></div>
		<div class="container">
		
		<ul id="zjgwTab" class="nav nav-tabs">
		    <li class="active"><a href="#expert_tab1" name="tab1" data-toggle="tab">处置专家</a></li>
		    <li><a href="#expert_tab2" name="expert_tab2" data-toggle="tab">诉讼律师</a></li>
		    <li><a href="#expert_tab3" name="expert_tab3" data-toggle="tab">财经法制媒体人</a></li>  
		</ul>
		<div id="content" class="tab-content" >
		    <!-- tab1 -->
		    <div id="expert_tab1" class="tab-pane fade in active">
			    <c:forEach items="${userList1}" var="item">
			    	<hr/>
				    <div class="media" onclick="openExpertDetail('${item.id}')">
					  <a class="pull-left" data-toggle="modal" >
					  <img src="${item.userHeadImages}" style="width: 64px; height: 80px" alt="" class="img-circle"/>
					  </a>
					  <div class="media-body">
					    <h4 class="media-heading">${item.nickname}</h4>
					    	<b>简介：</b>${fn:substring(item.description,0,40)}...
					  </div>
					</div>
			    </c:forEach>
			</div>
			<!-- tab2 -->
			<div id="expert_tab2" class="tab-pane fade">
			    <c:forEach items="${userList2}" var="item">
			    	<hr/>
				    <div class="media" onclick="openExpertDetail('${item.id}')">
					  <a class="pull-left" data-toggle="modal">
					  <img src="${item.userHeadImages}" style="width: 64px; height: 80px" alt="" class="img-circle"/>
					  </a>
					  <div class="media-body">
					    <h4 class="media-heading">${item.nickname}</h4>
					    	<b>简介：</b>${fn:substring(item.description,0,40)}...
					  </div>
					</div>
			    </c:forEach>
			</div>
			<!-- tab3 -->
			<div id="expert_tab3" class="tab-pane fade">
			    <c:forEach items="${userList3}" var="item">
			    	<hr/>
				    <div class="media"  onclick="openExpertDetail('${item.id}')">
					  <a class="pull-left" data-toggle="modal">
					  <img src="${item.userHeadImages}" style="width: 64px; height: 80px" alt="" class="img-circle"/>
					  </a>
					  <div class="media-body">
					    <h4 class="media-heading">${item.nickname}</h4>
					    	<b>简介：</b>${fn:substring(item.description,0,40)}...
					  </div>
					</div>
			    </c:forEach>
			</div><hr/>
		</div>
	</div>
</div>
	<div id="mf_expert" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<span>&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title">个人简介</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-4">
							<img class="img-circle" src="" alt="" id="expertImg"
								style="width: 120px; height: 160px; margin-top: 10px">
						</div>
						<div class="col-md-8">
							<h3 id="expertName"></h3>
							<b>简介：</b><p id="expertRmk" style="font-size: 16px;"></p>
						</div>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-sm btn-primary"
						class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="subfooter" style="background-color: #0b6070; margin-top: 50px"></div>

<jsp:include page="mobile_footer.jsp"></jsp:include>
<script type="text/javascript">
	function openExpertDetail(id){
		window.location.href = "${basePath}user/expertDetail?id="+id;
	}
</script>
</body>
</html>
