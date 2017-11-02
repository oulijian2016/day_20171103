<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
    
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
    <h1>登录</h1>
    <%
    	String msg = (String)request.getAttribute("msg");
    	if( msg == null){
    		msg = "";
    	}
     %>
    <span style="color:red"><%= msg %></span>
    <form action= "/day_20171102/LoginServlet" method="post" >
    用户名：<input type="text" name="username" /><br />
    密码：  <input type="password" name="userPassword"><br />
    <input type="submit" value="登录">
    </form>
  </body>
</html>
