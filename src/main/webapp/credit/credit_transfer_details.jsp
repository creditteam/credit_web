<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
     
                  <!-- 债权人信息 begin-->
					<div class="col-sm-4">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>发布人信息</h5>
							</div>
							<div class="ibox-content">
							
                            <form class="form-horizontal m-t" id="commentForm">
                            
                                                   
                            <div class="form-group">
                            <label class="col-sm-3 control-label">&nbsp;</label>
                                <div class="col-sm-8">
                                        <img alt="image" class="img-circle m-t-xs img-responsive" src="../hplus/img/a2.jpg">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">姓名：</label>
                                <div class="col-sm-8">
                                              紫红
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">E-mail：</label>
                                <div class="col-sm-8">
                                    zhangsan@163.com
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">网站：</label>
                                <div class="col-sm-8">
                                    www.baidu.com
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">说明：</label>
                                <div class="col-sm-8">
                                      复旦大学法律硕士。曾在上海市公安局经济犯罪侦查总队工作十余年，历任主办侦查员
                                </div>
                            </div>
                        </form>
							
							</div>
						
						</div>
					</div>
					<!-- 债权人信息 end-->
                  
                  <!-- 债权信息 begin -->
                  <div class="col-sm-8">
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
                  		    <dl class="dl-horizontal">
                                    <dt>债权类型：</dt>
									<dd>
													    <c:if test="${credit.crType==8 }">资产包债权</c:if>
													    <c:if test="${credit.crType==9 }">单笔债权</c:if>
									</dd>
								</dl>
                  
                              <dl class="dl-horizontal">
                                    <dt>债务人名称：</dt>
                                    <dd> 李*良</dd>
                               </dl>
                  
                                <dl class="dl-horizontal">
                                    <dt>所在省份：</dt>
                                    <dd>湖南省</dd>
                               </dl>
								<dl class="dl-horizontal">
									<dt>所在城市：</dt>
									<dd>邵阳市</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>处置方式：</dt>
									<dd> 催收</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>佣金范围：</dt>
									<dd>20%-30%</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>发布日期：</dt>
									<dd>2016年07月07日</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权开始日期：</dt>
									<dd>2014-11-12</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>债权金额：</dt>
									<dd> 3.00 (万元)</dd>
								</dl>

								<dl class="dl-horizontal">
									<dt>债权方联系人：</dt>
									<dd> 罗*</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权方联系电话：</dt>
									<dd>1500201****</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权凭证、债务人联系电话及债权人联系电话：</dt>
									<dd> 请在抢标后联系快易收平台方获取</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权描述：</dt>
									<dd>  我父亲在李社良家里搞建筑摔伤，司法鉴定8级伤残和10级伤残，法院判决赔偿7万元，只给了一小部分，现如今还有3万元赔偿没给，请问有什么方式可以拿到钱，被告家庭条件很好</dd>
								</dl>
								<dl class="dl-horizontal">
									<dt>债权备注：</dt>
									<dd>请有意者与平台联系，获取更多详情</dd>
								</dl>
							</div>
                </div>
            </div>
     
                  <!-- 债权信息  end-->
                </div>
            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
</body>

</html>