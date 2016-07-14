<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<jsp:include page="mobile_meta.jsp"></jsp:include>

  </head>
  
  <body>
    <div class="main-container" id="portfolio">
    	<div class="row">
			<div class="col-xs-6"><img style="height: 20px" id="logo" src="<%=basePath%>hplus/img/logo.jpg"  alt="快易收"></div>
			<div class="col-xs-6"><p style="color: #5f5d5d">服务热线 ： 4008-338-997</p></div>
		</div>
		<div class="container"><p class="lead text-center" style="font-weight: 900">专家顾问库</p></div>
		<div class="container">
		
		<ul id="zjgwTab" class="nav nav-tabs">
		    <li class="active"><a href="#tab1" name="tab1" data-toggle="tab">处置专家</a></li>
		    <li><a href="#tab2" name="tab2" data-toggle="tab">诉讼律师</a></li>
		    <li><a href="#tab3" name="tab3" data-toggle="tab">财经法制媒体人</a></li>  
		</ul>
		<div id="content" class="tab-content" >
		    <div id="tab1" class="tab-pane fade in active">
		    <hr/>
		    <div class="media">
			  <a class="pull-left" data-toggle="modal" data-target="#mf1">
			  <img src="<%=basePath%>hplus/img/expert/zhb.jpg" style="width: 64px; height: 80px" alt="" class="img-circle">
			  </a>
			  <div class="media-body">
			    <h4 class="media-heading">朱海斌</h4>
			    简介:复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探
			 
			  </div>
			</div>
			<div id="mf1" class="modal fade" tabindex="-1" role="dialog" 
						aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content" >
						<div class="modal-header">
							<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
								<span >&times;</span><span
									class="sr-only">关闭</span>
							</button>
							<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
						</div>
						<div class="modal-body">
							
							<div class="row">
							<div class="col-md-4">
									<img class="img-circle" src="<%=basePath%>hplus/img/expert/zhb.jpg" alt="" style="width: 150px; height: 180px; margin-top: 30px">
								</div>
								<div class="col-md-8">
								<h3>朱海斌 简介</h3>
									<p> 复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探</p>
								</div>
								
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
						</div>
					</div>
				</div>
			</div>
			<hr/>
			<div class="media">
			  <a class="pull-left" href="#">
			  <img src="<%=basePath%>hplus/img/expert/crt.jpg" style="width: 64px; height: 80px" alt="" class="img-circle">
			  </a>
			  <div class="media-body">
			    <h4 class="media-heading">陈锐滔</h4>
			    简介:大学本科，法学学士，广东省警官学院毕业，曾任职于广东省公安厅侦查、法制等部门。六
			 
			  </div>
			</div>
			<hr/>
			<div class="media">
			  <a class="pull-left" href="#">
			  <img src="<%=basePath%>hplus/img/expert/gch.jpg" style="width: 64px; height: 80px" alt="" class="img-circle">
			  </a>
			  <div class="media-body">
			    <h4 class="media-heading">郭朝辉</h4>
			    简介: 毕业于西南政法大学和武汉大学。曾长期在深圳市公安系统从事经济侦查工作，并任中层领
			 
			  </div>
			</div>
    			<!-- 1 start -->
    			<%-- <div class="row" style="border-radius:25px; background-color: #fff;" >
					<div class="col-xs-4">
					<a class="overlay" data-toggle="modal" data-target="#mf1"> 
								<img src="<%=basePath%>hplus/img/expert/zhb.jpg" style="width: 110px; height: 120px" alt="" class="img-circle"></a>
					</div>
					<div class="col-xs-1"></div>

								<div class="col-xs-7"
									style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
									<p>简介： 复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探</p>
									<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf1">朱海斌</a>
								</div>

				</div>
					<div id="mf1" class="modal fade" tabindex="-1" role="dialog" 
 								aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" >
									<div class="modal-header">
										<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
											<span >&times;</span><span
												class="sr-only">关闭</span>
										</button>
										<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
									</div>
									<div class="modal-body">
										
										<div class="row">
										<div class="col-md-4">
												<img class="img-circle" src="<%=basePath%>hplus/img/expert/zhb.jpg" alt="" style="width: 200px; height: 200px; margin-top: 30px">
											</div>
											<div class="col-md-8">
											<h3>朱海斌 简介</h3>
												<p> 复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探</p>
											</div>
											
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 2 start -->
						<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf1"> 
										<img src="<%=basePath%>hplus/img/expert/crt.jpg" style="width: 120px; height: 120px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>
		
										<div class="col-xs-7"
											style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
											<p>简介： 大学本科，法学学士，广东省警官学院毕业，曾任职于广东省公安厅侦查、法制等部门。六</p>
											<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf1">陈锐滔</a>
										</div>
		
						</div>
							<div id="mf1" class="modal fade" tabindex="-1" role="dialog" 
 								aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" >
									<div class="modal-header">
										<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
											<span >&times;</span><span
												class="sr-only">关闭</span>
										</button>
										<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
									</div>
									<div class="modal-body">
										
										<div class="row">
										<div class="col-md-4">
												<img class="img-circle" src="<%=basePath%>hplus/img/expert/zhb.jpg" alt="" style="width: 200px; height: 200px; margin-top: 30px">
											</div>
											<div class="col-md-8">
											<h3>陈锐滔 简介</h3>
												<p> 大学本科，法学学士，广东省警官学院毕业，曾任职于广东省公安厅侦查、法制等部门。六</p>
											</div>
											
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 3 start -->
		    			<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf1"> 
										<img src="<%=basePath%>hplus/img/expert/zhb.jpg" style="width: 120px; height: 120px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>
		
							<div class="col-xs-7"
								style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
								<p>简介： 复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探</p>
								<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf1">朱海斌</a>
							</div>
		
						</div>
							<div id="mf1" class="modal fade" tabindex="-1" role="dialog" 
 								aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" >
									<div class="modal-header">
										<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
											<span >&times;</span><span
												class="sr-only">关闭</span>
										</button>
										<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
									</div>
									<div class="modal-body">
										
										<div class="row">
										<div class="col-md-4">
												<img class="img-circle" src="<%=basePath%>hplus/img/expert/zhb.jpg" alt="" style="width: 200px; height: 200px; margin-top: 30px">
											</div>
											<div class="col-md-8">
											<h3>朱海斌 简介</h3>
												<p> 复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员、探</p>
											</div>
											
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 4 start -->
						<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf1"> 
										<img src="<%=basePath%>hplus/img/expert/crt.jpg" style="width: 120px; height: 120px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>
		
										<div class="col-xs-7"
											style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
											<p>简介： 大学本科，法学学士，广东省警官学院毕业，曾任职于广东省公安厅侦查、法制等部门。六</p>
											<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf1">陈锐滔</a>
										</div>
		
						</div>
							<div id="mf1" class="modal fade" tabindex="-1" role="dialog" 
 								aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" >
									<div class="modal-header">
										<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
											<span >&times;</span><span
												class="sr-only">关闭</span>
										</button>
										<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
									</div>
									<div class="modal-body">
										
										<div class="row">
										<div class="col-md-4">
												<img class="img-circle" src="<%=basePath%>hplus/img/expert/zhb.jpg" alt="" style="width: 200px; height: 200px; margin-top: 30px">
											</div>
											<div class="col-md-8">
											<h3>陈锐滔 简介</h3>
												<p> 大学本科，法学学士，广东省警官学院毕业，曾任职于广东省公安厅侦查、法制等部门。六</p>
											</div>
											
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
									</div>
								</div>
							</div>
						</div> --%>
						
						<%-- <c:forEach items="${consult}" var="lvshis">
						<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}"> 
										<img src="${lvshis.url}" style="width: 150px; height: 100px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>

										<div class="col-xs-7"
											style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
											<p>简介： ${lvshis.intr__ch}</p>
											<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}">${lvshis.name}</a>
										</div>

						</div>
							<div id="mf${lvshis.lvshi_id}" class="modal fade" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" >
											<div class="modal-header">
												<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
													<span >&times;</span><span
														class="sr-only">关闭</span>
												</button>
												<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">
												<div class="col-md-4">
														<img class="img-circle" src="${lvshis.url}" alt="" style="width: 200px; height: 200px; margin-top: 30px">
													</div>
													<div class="col-md-8">
													<h3>${lvshis.name} 简介</h3>
														<p>${lvshis.intr_c}</p>
													</div>
													
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							
						</c:forEach>
					</div>
		    <div id="tab2" class="tab-pane fade">
									<c:forEach items="${lawyers}" var="lvshis">
						<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}"> 
										<img src="${lvshis.url}" style="width: 150px; height: 100px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>

										<div class="col-xs-7"
											style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
											<p>简介： ${lvshis.intr__ch}</p>
											<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}">${lvshis.name}</a>
										</div>

									
								
						</div>
							<div id="mf${lvshis.lvshi_id}" class="modal fade" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" >
											<div class="modal-header">
												<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
													<span >&times;</span><span
														class="sr-only">关闭</span>
												</button>
												<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">
												<div class="col-md-4">
														<img class="img-circle" src="${lvshis.url}" alt="" style="width: 200px; height: 200px; margin-top: 30px">
													</div>
													<div class="col-md-8">
													<h3>${lvshis.name} 简介</h3>
														<p>${lvshis.intr_c}</p>
													</div>
													
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
							
						</c:forEach>
								</div>
		    <div id="tab3" class="tab-pane fade" >
						<c:forEach items="${app_development}" var="lvshis">
						<div class="row" style="border-radius:25px; background-color: #fff;" >
							<div class="col-xs-4">
							<a class="overlay" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}"> 
										<img src="${lvshis.url}" style="width: 150px; height: 100px" alt="" class="img-circle"></a>
							</div>
							<div class="col-xs-1"></div>

										<div class="col-xs-7"
											style=" background: #oooeee;white-space:normal;word-break:break-all;word-wrap:break-word;">
											<p>简介： ${lvshis.intr__ch}</p>
											<a class="btn btn-primary" style="width: 100%" data-toggle="modal" data-target="#mf${lvshis.lvshi_id}">${lvshis.name}</a>
										</div>

									
								
						</div>
							<div id="mf${lvshis.lvshi_id}" class="modal fade" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" >
											<div class="modal-header">
												<button type="button" class="close"  data-dismiss="modal" aria-hidden="true">
													<span >&times;</span><span
														class="sr-only">关闭</span>
												</button>
												<h4 class="modal-title" id="${lvshis.lvshi_id}-label">专家顾问个人简介</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">
												<div class="col-md-4">
														<img class="img-circle" src="${lvshis.url}" alt="" style="width: 200px; height: 200px; margin-top: 30px">
													</div>
													<div class="col-md-8">
													<h3>${lvshis.name} 简介</h3>
														<p>${lvshis.intr_c}</p>
													</div>
													
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-primary" class="btn btn-default" data-dismiss="modal">关闭</button>
											</div>
										</div>
									</div>
								</div>
						</c:forEach> --%>
					</div>
		</div>
		</div>
	</div>
	
<div class="subfooter" style="background-color: #0b6070; margin-top: 50px"></div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

  </body>
</html>
