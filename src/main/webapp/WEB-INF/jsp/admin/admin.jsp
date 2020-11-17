<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %><html>
<security:authorize  access="isAuthenticated()">
    <jsp:include page="../controlpanel.jsp"></jsp:include>

</security:authorize>
<security:authorize  access="!hasRole('ROLE_ADMIN')">
    <jsp:include page="./login.jsp"></jsp:include>

</security:authorize>