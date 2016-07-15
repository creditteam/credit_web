<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>快易收-您的债权管理专家</title>
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
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                    <dl class="dl-horizontal">
                                    <dt>悬赏类型：</dt>
                                    <dd>
                                    <c:if test="${reward.rewardType==0}">个人债权</c:if>
                                    <c:if test="${reward.rewardType==1}">企业债权</c:if>
                                    <c:if test="${reward.rewardType==2}">预期贷款</c:if>
                                    <c:if test="${reward.rewardType==3}">固定资产</c:if>
                                    <c:if test="${reward.rewardType==4}">国际债权</c:if>
                                    </dd>
                                </dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>金额：</dt>
                                    <dd>${reward.rewardAmount }</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>姓名：</dt>
                                    <dd>${reward.rewardName }</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>身份证：</dt>
									<dd>${reward.cartId }</dd>
								</dl>

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
									<dt> 发布者：</dt>
									<dd>请抢标后联系平台获取</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>联系电话：</dt>
									<dd>${reward.rewardType }</dd>
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

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>