<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/6
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/login/modernizr-2.6.2.min.js"></script>
    <script type="text/javascript">
    </script>
    <style type="text/css">
        .footer{
            padding-left: 500px;
            position:fixed;
            bottom:0;
        }
    </style>
</head>
<body class="style-2">
<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <!-- Start Sign In Form -->
            <form action="login" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
                <h2>员工登录</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">账号</label>
                    <input type="text" class="form-control" id="username" name = "username"placeholder="请输入用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <c:choose>
                        <c:when test="${msg == null }">
                        </c:when>
                        <c:otherwise>
                            <span style="padding-top: 5px"><font color="red">${msg}</font></span>
                        </c:otherwise>
                    </c:choose>
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="password" name  = "password" placeholder="请输入密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <input type="submit" value="登录" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->
        </div>
    </div>
    <%--<div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center">
            <p>
                <small>飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</small>
            </p>
        </div>
    </div>--%>
</div>
<!-- jQuery -->
<script src="js/login/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="js/login/bootstrap.min.js"></script>
<!-- Placeholder -->
<script src="js/login/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="js/login/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="js/login/main.js"></script>
<div class="footer">飞毛腿快递&nbsp;版权所有&nbsp;浙ICP13044869号&#12288;总部地址：杭州牛田&#12288;咨询电话：66666666</div>
</body>
</html>
