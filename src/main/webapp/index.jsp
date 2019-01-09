<%--
  User: 23237
  Date: 2019/1/9
  Time: 13:34
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--引入jstl标签-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!--使用basePath——项目名/-->
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <!--用于seo优化-->
    <meta name="Author" content="Java1234_小锋老师">
    <meta name="keywords" content="Java1234"/>
    <meta name="description" content="Java1234"/>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="jumbotron">
        <div class="container">
            <h1>欢迎使用“用户管理系统”</h1>
            <p>本系统采用IDEA开发工具，使用maven管理项目依赖，采用当前比较流行的Spring+SpringMVC+Mybatis框架，实现了用户的增删查改的基本功能</p>
            <p><a class="btn btn-primary btn-lg" href="user/userList" role="button">显示所有用户</a></p>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>