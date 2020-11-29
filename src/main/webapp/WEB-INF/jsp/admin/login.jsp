<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" /><!DOCTYPE html>
<html>
<head>
        <style>
            body {
                background-image: url("${contextPath}/resources/images/test.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="${contextPath}/resources/controlpanel/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/font-awesome/css/font-awesome.css " rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/animate.css" rel="stylesheet">
    <link href="${contextPath}/resources/controlpanel/css/style.css" rel="stylesheet">
</head>
<body class="gray-bg">
<div class="middle-box text-center loginscreen animated fadeInDown">
    <div style="margin-top: 50%">
        <div>
            <h1 class="logo-name"></h1>
        </div>
        <h3 style="color: mintcream">Welcome</h3>
        <p style="color: mintcream">Login in. To see it in action</p>
        <!--action="${contextPath}/api/users/signin"-->
        <form:form class="m-t" id="login-form" modelAttribute="usersDTO"  >
            <div class="form-group">
                <form:input type="text" class="form-control" placeholder="Username" required="" path="username"/>
            </div>
            <div class="form-group">
                <form:input type="password" class="form-control" placeholder="Password" required="" path="password"/>
            </div>
            <button type="submit" id="login-button" class="btn btn-success block full-width m-b">Login</button>
            <a style="color: #0e9aef" href="#"><small>Forgot Password</small></a>
        </form:form>
        <p class="m-t"> <small></small> </p>
    </div>
</div>
<!-- Mainly scripts -->
<script src="${contextPath}/resources/controlpanel/js/jquery-3.1.1.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/popper.min.js"></script>
<script src="${contextPath}/resources/controlpanel/js/bootstrap.js"></script>
<script src="${contextPath}/resources/js/admin/login_register.js"></script>


</body>
</html>
