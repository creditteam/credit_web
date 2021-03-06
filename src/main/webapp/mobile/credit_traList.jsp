<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath",basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>快易收债权管理|债权信息</title>
    
	<meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<style type="text/css">
		html,body {
			height: 100%;
		}
	</style>
  </head>
	<jsp:include page="mobile_meta.jsp"></jsp:include>
<body>

<div class="main-container" style="height:100%">
	<jsp:include page="mobile_top_logo.jsp"></jsp:include>
	<div class="row">
	<div class="col-md-12" >
		<table class="table table-striped" style=" text-align:center; ">
		   <caption style="text-align:center;">债权转让</caption>
		   <thead>
		      <tr>
		         <th style="text-align:center;">所在地</th>
		         <th style="text-align:center;">债务人</th>
		         <th style="text-align:center;">金额(万元)</th>
		         <th style="text-align:center;">佣金</th>
		         <th style="text-align:center;"></th>
		      </tr>
		   </thead>
		   <tbody id="obltb_body">
			   <c:forEach items="${pd.data }" var="credit">
					<tr onclick="javascript:window.location.href = '${basePath}credit/creditDetails?id=${credit.id}'">
						<td><span class="label label-warning">${credit.debtProvince}</span></td>
						<td>${credit.debtName }</td>
						<td><i class="fa fa-clock-o"></i> ${credit.crAmount}</td>
						<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
						<td>
								    <c:if test="${credit.crStatus eq '1'}">
									<button  style="background-color: red; border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">招标中</button>
									</c:if>
									<c:if test="${credit.crStatus eq '2'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已匹配</button>
									</c:if>
									<c:if test="${credit.crStatus eq '3'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已签前期协议</button>
									</c:if>
									<c:if test="${credit.crStatus eq '4'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已签处置协议</button>
								    </c:if>
		                            <c:if test="${credit.crStatus eq '5'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已签后期协议</button>
								    </c:if>
                                   <c:if test="${credit.crStatus eq '6'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">处置中</button>
								    </c:if>
								   <c:if test="${credit.crStatus eq '7'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">还款中</button>
								    </c:if>
								    <c:if test="${credit.crStatus eq '9'}">
									<button  style="border-radius:25px;" class="btn btn-yellow export btn-sm" disabled="disabled">已终结</button>
								    </c:if>
						</td>
					</tr>
				</c:forEach>
		   		<tr>
			   		<td colspan="5"><gvtv:newPage href="${basePath }credit/navlist?creditType=2" pageType="mobile"></gvtv:newPage></td>
			   	</tr>
		   </tbody>
		</table>
	</div>
	</div>
	<div style="height:55px;"></div>
</div>

<jsp:include page="mobile_footer.jsp"></jsp:include>

  </body>
</html>
