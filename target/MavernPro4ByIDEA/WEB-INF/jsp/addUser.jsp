<%--
  User: 23237
  Date: 2019/1/9
  Time: 13:39
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h3 class="panel-title">添加用户</h3>
        </div>
        <div class="panel-body">

            <form action="user/doAddUser" method="post">
                <div class="form-group">
                    <label for="name">姓名：</label>
                    <input type="text" class="form-control" name = "name" id="name" placeholder="请输入姓名...">
                </div>
                <div class="form-group">
                    <label for="address">地址：</label>
                    <input type="text" class="form-control" name = "address" id="address" placeholder="请输入地址...">
                </div>
                <div class="form-group">
                    <label for="age">年龄：</label>
                    <input type="text" class="form-control" name = "age" id="age" placeholder="请输入年龄...">
                </div>
                <div class="form-group">
                    <label for="phone">手机号码：</label>
                    <input type="text" class="form-control" name = "phone" id="phone" placeholder="请输入手机号码...">
                </div>

                <button type="submit" class="btn btn-default">添加</button>
            </form>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>