<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="gvtv" uri="/WEB-INF/gvtv.tld"%>
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
                     <div class="row">
              <!-- 左边菜单 -->       
            <jsp:include page="/user/user_left.jsp"></jsp:include>
             <!-- 右边主内容 -->
             <div class="col-sm-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>债权转让</h5>
                        <div class="ibox-tools">
                            <a href="${basePath }credit/saveCredit?userId=${userInfo.id}&creditType=${creditType}" class="btn btn-primary btn-xs" target="_self">发布项目</a>
                        </div>
                    </div>
                    <div class="ibox-content">
                      <!-- 搜索表单 -->
                      <div class="row m-b-sm m-t-sm">
                            <div class="col-md-1">
                                <button type="button" id="loading-example-btn" class="btn btn-white btn-sm"><i class="fa fa-refresh"></i> 刷新</button>
                            </div>
                            <div class="col-md-11">
                                <div class="input-group">
                                    <input type="text" placeholder="请输入项目名称" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                                </div>
                            </div>
                        </div>
                      <!-- 数据列表 -->

                     <table class="table table-hover no-margins">
					<thead>
						<tr>
							<th>所在地</th>
							<th>债务人</th>
							<th>金额(万元)</th>
							<th>佣金</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
					    <c:forEach items="${pd.data }" var="credit">
						<tr>
							<td><span class="label label-warning">${credit.debtProvince }</span></td>
							<td>${credit.debtName }</td>
							<td><i class="fa fa-clock-o"></i> ${credit.crAmount }</td>
							<td class="text-navy"><i class="fa fa-level-up"></i>${credit.commisionRange}</td>
							<td><a href="${basePath }credit/userCreditDetails?id=${credit.id}" target="_self">查看</a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				    <div class="hr-line-dashed"></div>
                    <gvtv:newPage href="${basePath }credit/list?creditType=${creditType }"></gvtv:newPage>
				
                    </div>
                </div>
            </div>
        </div>
                 
                 
                 
                 
                </div>

            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
    <script>
       
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>

</html>