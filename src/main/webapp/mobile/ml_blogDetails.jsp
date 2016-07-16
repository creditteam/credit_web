<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

    <title>快易收-您的债权管理专家</title>
    <meta name="description" content="Worthy a Bootstrap-based, Responsive HTML5 Template">
	<meta name="author" content="htmlcoder.me">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
 	<jsp:include page="mobile_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="mobile_top_logo.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
                <div class="container">                    
                   <!-- 业务资讯-->         
	                     <div class="row">
				            <div class="col-sm-12">
				                <div class="ibox">
				                    <div class="ibox-content">
				                        
				                        <div class="text-center article-title">
				                            <h1>
				                            	${blog.blogTitle }
				                            </h1>
				                        </div>
				                        <div class="pull-right">
				                            <span class="btn btn-white btn-xs" type="button">
				                            <fmt:formatDate value="${blog.createTime}" type="date" dateStyle="long"/></span>
				                        </div><br/>
				                        <p style="font-size: 16px">
				                        	${blog.blogContext }
				                        </p>
				                        <hr>
				
				                    </div>
				                </div>
				            </div>
				        </div>
                     </div>
                </div>

            </div>

            
        </div>
    </div>

    <jsp:include page="mobile_footer.jsp"></jsp:include>
</body>

</html>