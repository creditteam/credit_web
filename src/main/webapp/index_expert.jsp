<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="row">
	<div class="col-sm-12">
		<div class="tabs-container">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#tab-exp1"
					aria-expanded="true">资深不良处置专家</a></li>
				<li class=""><a data-toggle="tab" href="#tab-exp2"
					aria-expanded="false">资深诉讼律师</a></li>
				<li class=""><a data-toggle="tab" href="#tab-exp3"
					aria-expanded="false">资深诉财经、法制媒体人</a></li>
			</ul>
			<div class="tab-content">
				<div id="tab-exp1" class="tab-pane active">
					<div class="panel-body">
						<div class="row">
						<c:forEach items="${userList1}" var="item">
							<div class="col-sm-4">
								<div class="contact-box">
									<a href="profile.html">
										<div class="col-sm-4">
											<div class="text-center">
												<img alt="image" class="img-circle m-t-xs img-responsive"
													src="${item.userHeadImages}">
												<div class="m-t-xs font-bold"></div>
											</div>
										</div>
										<div class="col-sm-8">
											<h3>
												<strong>${item.nickname}</strong>
											</h3>
											<address>
												<strong>简介：</strong><br>${fn:substring(item.description,0,40)}...
											</address>
										</div>
										<div class="clearfix"></div>
									</a>
								</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>
				<div id="tab-exp2" class="tab-pane">
					<div class="panel-body">
						<div class="row">
						<c:forEach items="${userList2}" var="item">
							<div class="col-sm-4">
								<div class="contact-box">
									<a href="profile.html">
										<div class="col-sm-4">
											<div class="text-center">
												<img alt="image" class="img-circle m-t-xs img-responsive"
													src="${item.userHeadImages}">
												<div class="m-t-xs font-bold"></div>
											</div>
										</div>
										<div class="col-sm-8">
											<h3>
												<strong>${item.nickname}</strong>
											</h3>
											<address>
												<strong>简介：</strong><br>${fn:substring(item.description,0,40)}...
											</address>
										</div>
										<div class="clearfix"></div>
									</a>
								</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>
				<div id="tab-exp3" class="tab-pane">
					<div class="panel-body">
						<div class="row">
						<c:forEach items="${userList3}" var="item">
							<div class="col-sm-4">
								<div class="contact-box">
									<a href="profile.html">
										<div class="col-sm-4">
											<div class="text-center">
												<img alt="image" class="img-circle m-t-xs img-responsive"
													src="${item.userHeadImages}">
												<div class="m-t-xs font-bold"></div>
											</div>
										</div>
										<div class="col-sm-8">
											<h3>
												<strong>${item.nickname}</strong>
											</h3>
											<address>
												<strong>简介：</strong><br>${fn:substring(item.description,0,40)}...
											</address>
										</div>
										<div class="clearfix"></div>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<br/>
<br/>