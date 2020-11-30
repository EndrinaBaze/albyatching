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
    <title>Register</title>
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
        <p style="color: mintcream">Register</p>
        <!--action="${contextPath}/api/users/signin"-->
        <form:form class="m-t" modelAttribute="usersDTO" id="register-form">
            <div class="form-group">
                <form:input type="text" id="username" class="form-control" placeholder="Username" required="" path="username"/>
            </div>
            <div class="form-group">
                <form:input type="password" id="password" class="form-control" placeholder="Password" required="" path="password"/>
            </div>
                <div class="form-group">
                    <form:input type="text" id="email" class="form-control" placeholder="E-mail" required="" path="email"/>
                </div>
            <div class="form-group">
                <form:select id="roles" class="form-control custom-select"  path="roles">
                    <option>Select Role</option>
                    <option value="ROLE_ADMIN">ADMIN</option>
                    <option value="ROLE_CLIENT">CLIENT</option>
                </form:select>
            </div>
            <button type="submit" id="register-button" class="btn btn-success block full-width m-b">Register</button>
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
