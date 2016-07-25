<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
     <div class="row">
            <div class="col-sm-12">
                <div class="ibox">
                    <div class="ibox-content">
                        <div class="pull-right">
                            <button class="btn btn-white btn-xs" type="button"></button>
                            <button class="btn btn-white btn-xs" type="button"></button>
                            <button class="btn btn-white btn-xs" type="button">
                            <fmt:formatDate value="${blog.createTime}" type="date" dateStyle="long"/></button>
                        </div>
                        <div class="text-center article-title">
                            <h1>
                            	${blog.blogTitle }
                            </h1>
                                                                      作者：立马    来源：www.baidu.com
                        </div>
                        <p style="font-size: 16px">
                        	${blog.blogContext }
                        </p>
                        <hr>

                    </div>
                </div>
            </div>
        </div>