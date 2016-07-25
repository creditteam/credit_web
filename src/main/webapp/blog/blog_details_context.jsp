<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                            <span class="btn btn-white btn-xs">来源：${blog.blogSource}</span>
                            <span class="btn btn-white btn-xs">作者：${blog.blogAuthor}</span>
                            <span class="btn btn-white btn-xs">
                            <fmt:formatDate value="${blog.createTime}" type="date" dateStyle="long"/></span>
                        </div><br/>
                        <p style="font-size: 16px">
                        <hr>
                        	${blog.blogContext}
                        </p>
                        <hr>

                    </div>
                </div>
            </div>
        </div>