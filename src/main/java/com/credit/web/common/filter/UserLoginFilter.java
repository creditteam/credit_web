package com.credit.web.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.credit.web.entity.User;
/**
 * 用户登录过滤器
 * @author huixiong 
 * @date: 2016年7月19日 下午4:46:58 
 * @since:1.0.0
 */
public class UserLoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public UserLoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		   // 获得在下面代码中要用的request,response,session对象
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        
        String contextPath = request.getContextPath();
        // 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+contextPath;

        // 获得用户请求的URI
        String path = request.getRequestURI();
        
        // 从session里取员工工号信息
        User userInfo = (User) session.getAttribute("userInfo");

        /*创建类Constants.java，里面写的是无需过滤的页面
        for (int i = 0; i < Constants.NoFilter_Pages.length; i++) {

            if (path.indexOf(Constants.NoFilter_Pages[i]) > -1) {
                chain.doFilter(servletRequest, servletResponse);
                return;
            }
        }
        */
        
        // 登陆页面无需过滤
//        if(path.indexOf("/login.jsp") > -1
//          ||path.indexOf("index_main.jsp")>-1) {
//            chain.doFilter(servletRequest, servletResponse);
//            return;
//        }

        // 判断如果没有取到员工信息,就跳转到登陆页面
//        if (userInfo == null || "".equals(userInfo)) {
//            // 跳转到登陆页面
//        	response.sendRedirect(basePath+"/user/tologin");
//        } else {
//            // 已经登陆,继续此次请求
//            chain.doFilter(request, response);
//        }
        chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
