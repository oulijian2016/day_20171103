<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'suss1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    	String username = (String)request.getSession().getAttribute("username");
    	if(username == null){// 转发到登录页面
    		request.setAttribute("msg", "请登录");
    		request.getRequestDispatcher("/login/login/login.jsp").forward(request, response);
    		return;
    	}
     %>
     
     欢迎<%= username%>使用该系统
     <% out.println(response.encodeURL("/day_20171102/login/login/login.jsp")); %>
  </body>
</html>
