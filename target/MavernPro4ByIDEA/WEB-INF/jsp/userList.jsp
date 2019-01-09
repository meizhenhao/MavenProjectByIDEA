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
    <a class="btn btn-success" href="user/toAddUser" role="button">添加用户</a>
    <table class="table table-hover">
        <tr>
            <td >用户ID</td>
            <td >姓名</td>
            <td >地址</td>
            <td >年龄</td>
            <td >手机号码</td>
            <td >操作</td>
        </tr>

        <c:forEach items="${userList}" var="user">
            <tr>
                <td >${user.id}</td>
                <td >${user.name}</td>
                <td >${user.address}</td>
                <td >${user.age}</td>
                <td >${user.phone}</td>
                <td >
                    <a href = "user/deleteUser?id=${user.id}">[删除]&nbsp;&nbsp;</a>
                    <a href="user/toAddUser?id=${user.id}">[更新]</a>
                </td>
            </tr>
        </c:forEach>

    </table>
    <nav aria-label="...">
        <ul class="pager">
            <c:choose>
                <c:when test="${currentPage == 1}"><li><a style="color: #dddddd">上一页</a></li></c:when>
                <c:otherwise><li><a href="user/userList?page=${currentPage-1}">上一页</a></li></c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${maxPage == currentPage}"><li><a style="color: #dddddd">下一页</a></li></c:when>
                <c:otherwise><li><a href="user/userList?page=${currentPage+1}">下一页</a></li></c:otherwise>
            </c:choose>
        </ul>
    </nav>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>