<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";//
pageContext.setAttribute("basePath", basePath);
%>
      <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="file-manager">
                            <h5>新闻资讯</h5>
                            <ul class="folder-list" style="padding: 0">
                                <li><a href="${basePath}blog/list?blogType=1&from=0" target="_parent"><i class="fa fa-folder"></i> 媒体报道</a>
                                </li>
                                <li><a href="${basePath}blog/list?blogType=2&from=0" target="_parent"><i class="fa fa-folder"></i> 业务文章</a>
                                </li>
                                <li><a href="${basePath}filemanager/list"><i class="fa fa-folder"></i> 资源下载</a></li>
                            </ul>
                            <h5 class="tag-title">标签</h5>
                            <ul class="tag-list" style="padding: 0">
                                <li><a href="file_manager.html">爱人</a>
                                </li>
                                <li><a href="file_manager.html">工作</a>
                                </li>
                                <li><a href="file_manager.html">家庭</a>
                                </li>
                                <li><a href="file_manager.html">孩子</a>
                                </li>
                                <li><a href="file_manager.html">假期</a>
                                </li>
                                <li><a href="file_manager.html">音乐</a>
                                </li>
                                <li><a href="file_manager.html">照片</a>
                                </li>
                                <li><a href="file_manager.html">电影</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>