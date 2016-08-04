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
                    <!-- 债权追收详情开始 -->
                  <div class="row">
                  <jsp:include page="/user/user_left.jsp"></jsp:include>
                  <div class="col-sm-9">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>债权详情信息</h5>
                    </div>
                    <div class="ibox-content">
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         债权人信息
					      </h4>
					      </a><br/>
                  		    <dl class="dl-horizontal">
                                    <dt>债权类型：</dt>
                                    <dd>
												    <c:if test="${credit.crType==1 }">民间借贷</c:if>
												    <c:if test="${credit.crType==2 }">应收账款</c:if>
												    <c:if test="${credit.crType==3 }">银行借贷</c:if>
												    <c:if test="${credit.crType==4 }">互联网金融</c:if>
												    <c:if test="${credit.crType==5 }">小额信贷</c:if>
												    <c:if test="${credit.crType==6 }">典当担保</c:if>
												    <c:if test="${credit.crType==7 }">司法裁决</c:if>
                                    </dd>
                                </dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>债务人名称：</dt>
                                    <dd> ${credit.contactName }</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>所在省份：</dt>
                                    <dd>${credit.debtProvince }</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>所在城市：</dt>
									<dd>${credit.debtCity }</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>处置方式：</dt>
									<dd><c:forEach items="${credit.disTypes}" var="item">
										<c:if test="${item eq '1'}">诉讼</c:if>
										<c:if test="${item eq '2'}">催收</c:if>
										<c:if test="${item eq '3'}">债权转让</c:if>
									</c:forEach></dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>佣金范围：</dt>
									<dd>${credit.commisionRange }</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd>
									<fmt:formatDate value="${credit.createDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
									</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权开始日期：</dt>
									<dd>
									<fmt:formatDate value="${credit.openDate }" pattern="yyyy-MM-dd HH:mm:ss"/>
									</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>债权金额：</dt>
									<dd> ${credit.crAmount }(万元)</dd>
								</dl>

                          <div class="hr-line-dashed"></div>
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         债务方信息
					      </h4>
					      </a><br/>
								<dl class="dl-horizontal">
									<dt>债权方联系人：</dt>
									<dd> ${credit.debtName }</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权方联系电话：</dt>
									<dd>${credit.debtPhone }</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权凭证：</dt>
									<dd><c:forEach items="${credit.debtProofs}" var="item">
										<c:if test="${not empty item}">
										<a onclick="showBigImage('${basePath}${item}')">
											<img alt="" src="${basePath}${item}" width="50px" height="50px"/>&nbsp;&nbsp;
										</a>
										</c:if>
									</c:forEach></dd>
								</dl>
								<!-- <dl class="dl-horizontal">
									<dt>债务人联系电话及债权人联系电话：</dt>
									<dd>请联系快易收平台方获取</dd>
								</dl> -->
								<dl class="dl-horizontal">
									<dt>债权描述：</dt>
									<dd> ${credit.description }</dd>
								</dl>
							</div>
                </div>
            </div>
                  </div>
                  <!-- 债权信息  end-->
                    
                    <!-- 债权追收详情结束 -->
                </div>

            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>
<div class="modal fade" id="creditImgModal" tabindex="-1" role="dialog"
		aria-labelledby="xuansModalLabel" aria-hidden="true" >
		<div class="modal-dialog" style="width:720px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="xuansModalLabel">债权凭证</h4>
				</div>
				<div class="modal-body">
					<img alt="" src="" id="creditBigImg" width="650px" height="550px"/>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" style="font-size: 16px">关闭</button>
				</div>
			</div>
		</div>
	</div>
    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script type="text/javascript">
    	function showBigImage(url){
    		$("#creditBigImg").attr("src",url);
    		$("#creditImgModal").modal('show');
    	}
    </script>
</body>

</html>