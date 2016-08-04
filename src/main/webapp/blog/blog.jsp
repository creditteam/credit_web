<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <Link Rel="icon" href="/hplus/img/kuaiyishou.ico" type=”image/x-icon”>

    <title>快易收-专注债权处置</title>
    <jsp:include page="/common/_meta.jsp"></jsp:include>

</head>

<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <jsp:include page="/common/_menu.jsp"></jsp:include>
            
            <div class="wrapper wrapper-content">
                <div class="container">                    
                   <!-- 业务资讯-->         
                     <div class="row">          
	                     <jsp:include page="/blog/blog_left.jsp"></jsp:include>
	                     <div class="col-sm-9 animated fadeInRight">
	                     <jsp:include page="/blog/blog_list.jsp"></jsp:include>
	                     </div>
                     </div>
                </div>

            </div>

			<!-- 底部文件 -->
			<jsp:include page="/common/_footer.jsp"></jsp:include>
            
        </div>
    </div>

    <jsp:include page="/common/_script.jsp"></jsp:include>
</body>

</html>