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
                    <!-- 债权处置详情开始 -->
                  <div class="row">
                  <jsp:include page="/user/user_left.jsp"></jsp:include>
                  <div class="col-sm-9">
                  <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>债权详情信息</h5>
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
                          <a class="list-group-item active">
					      <h4 class="list-group-item-heading">
					         债权人信息
					      </h4>
					      </a><br/>
                  		    <dl class="dl-horizontal">
                                    <dt>债权类型：</dt>
                                    <dd>
                                    			    <c:if test="${credit.crType==1 }">个人债权</c:if>
													<c:if test="${credit.crType==2 }">企业债权</c:if>
													<c:if test="${credit.crType==3 }">预期贷款</c:if>
													<c:if test="${credit.crType==4 }">固定资产</c:if>
													<c:if test="${credit.crType==5 }">国际债权</c:if>
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
									<dd>${credit.disposalType }</dd>
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
									<dt>债权凭证、债务人联系电话及债权人联系电话：</dt>
									<dd> 请在抢标后联系快易收平台方获取</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权描述：</dt>
									<dd> ${credit.description }</dd>
								</dl>
							</div>
                </div>
            </div>
                  </div>
                  <!-- 债权信息  end-->
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <!-- 债权处置详情结束 -->
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