<%--
  User: 23237
  Date: 2019/1/9
  Time: 13:39
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
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h3 class="panel-title">修改用户</h3>
        </div>
        <div class="panel-body">

            <form action="user/doAddUser?id=${currentUser.id}" method="post">
                <div class="form-group">
                    <label for="name">姓名：</label>
                    <input type="text" class="form-control" name = "name" value="${currentUser.name}" id="name">
                </div>
                <div class="form-group">
                    <label for="address">地址：</label>
                    <input type="text" class="form-control" name = "address" value="${currentUser.address}" id="address">
                </div>
                <div class="form-group">
                    <label for="age">年龄：</label>
                    <input type="text" class="form-control" name = "age" value="${currentUser.age}" id="age">
                </div>
                <div class="form-group">
                    <label for="phone">手机号码：</label>
                    <input type="text" class="form-control" name = "phone" value="${currentUser.phone}" id="phone">
                </div>

                <button type="submit" class="btn btn-default">更新</button>
            </form>

        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>