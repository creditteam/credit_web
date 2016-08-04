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
                    <!-- 线索悬赏详情开始 -->
                  <div class="row">
                  <jsp:include page="/user/user_left.jsp"></jsp:include>
                  <div class="col-sm-9">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>线索悬赏信息</h5>
                    </div>
                    <div class="ibox-content">
                    <dl class="dl-horizontal">
                                <dt>悬赏类型：</dt>
                                <dd>
						    	<c:if test="${reward.rewardType==0}">找人</c:if>
                                  <c:if test="${reward.rewardType==1}">找车辆</c:if>
                                  <c:if test="${reward.rewardType==2}">找房产</c:if>
                                  <c:if test="${reward.rewardType==3}">找应收款</c:if>
                                  <c:if test="${reward.rewardType==4}">其他</c:if>
                                 </dd>
                               </dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>金额：</dt>
                                    <dd>${reward.rewardAmount }(万元)</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>姓名：</dt>
                                    <dd>${reward.rewardName }</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>身份证：</dt>
									<dd>${reward.cartId }</dd>
								</dl>


                               <c:if test="${reward.rewardType==1}">
                               	<dl class="dl-horizontal">
									<dt>车牌号：</dt>
									<dd>${reward.carBrand }</dd>
								</dl>
                               </c:if>
								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd><fmt:formatDate value="${reward.createTime }" pattern="yyyy-MM-dd HH:mm:ss"/> </dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>有效日期：</dt>
									<dd><fmt:formatDate value="${reward.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>状态：</dt>
									<dd>
									<c:if test="${reward.rewardStatus==1}">发布中</c:if>
									<c:if test="${reward.rewardStatus==0}">已结束</c:if>
									</dd>
								</dl>
                               <hr/>
								<dl class="dl-horizontal">
									<dt>发布者：</dt>
									<dd>${user.nickname}</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>联系电话：</dt>
									<dd>${user.userPhone}</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt> 图片：</dt>
									<dd><c:forEach items="${reward.imagesArry}" var="item">
										<c:if test="${not empty item}">
										<span onclick="showBigImage('${basePath}${item}')">
											<img alt="" src="${basePath}${item}" onclick="showBigImage('${basePath}${item}')" width="50px" height="50px"/>&nbsp;&nbsp;
										</span>
										</c:if>
									</c:forEach></dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>悬赏描述：</dt>
									<dd>${user.description}</dd>
								</dl>
							</div>
                </div>
            </div>
                  </div>
                  <!-- 线索悬赏 end-->
                </div>

            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>
<div class="modal fade" id="rewardImgModal" tabindex="-1" role="dialog"
		aria-labelledby="xuansModalLabel" aria-hidden="true" >
		<div class="modal-dialog" style="width:720px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="xuansModalLabel">悬赏图片</h4>
				</div>
				<div class="modal-body">
					<img alt="" src="" id="rewardBigImg" width="650px" height="550px"/>
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
			$("#rewardBigImg").attr("src",url);
			$("#rewardImgModal").modal('show');
		}
    </script>
</body>

</html>