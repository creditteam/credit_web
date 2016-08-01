<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";//
pageContext.setAttribute("basePath", basePath);
%>
<div class="row">
	<div class="col-sm-12">
		<div class="tabs-container">
			<ul class="nav nav-tabs">
			    <li class="active"><a data-toggle="tab" href="#nav-tabs1" aria-expanded="true">成功案例</a></li>
				<li class=""><a data-toggle="tab" href="#nav-tabs2" aria-expanded="false">用户心声</a></li>
				<li class=""><a data-toggle="tab" href="#nav-tabs3" aria-expanded="false">资信查询</a></li>
				<li class=""><a data-toggle="tab" href="#nav-tabs4" aria-expanded="false">合作机构</a></li>
			</ul>
			<div class="tab-content">
				<div id="nav-tabs1" class="tab-pane active">
					<div class="panel-body">
						<div class="row">
							<jsp:include page="index_al.jsp"></jsp:include>
						</div>
					</div>
				</div>
			    <!--  -->
				<div id="nav-tabs2" class="tab-pane">
					<div class="panel-body">
						<div class="row">
							<jsp:include page="index_xs.jsp"></jsp:include>
						</div>
					</div>
				</div>
				<!-- div1 end -->
				<div id="nav-tabs3" class="tab-pane">
					<div class="panel-body">
						<div class="row">
							<jsp:include page="index_zx.jsp"></jsp:include>
						</div>
					</div>
				</div>
			   <!-- div2 begin -->
				<div id="nav-tabs4" class="tab-pane">
					<div class="panel-body">
						<div class="row">
						  <!-- 合作机构-->
                          <jsp:include page="index_footer.jsp"></jsp:include>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>