<%@ page contentType="text/html" pageEncoding="x-iso-8859-11"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<div class="row">
    <div class="col-lg-12">
        <div class="ibox">
            <div class="ibox-title">
                <c:choose>
                    <c:when test="${not empty serviceDTO.id}">
                        <h5>Update Service></h5>
                    </c:when>
                    <c:otherwise>
                        <h5>Create Service</h5>
                    </c:otherwise>
                </c:choose>
                <div class="ibox-tools"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></div>
            </div>
            <div class="ibox-content col-lg-12">
                <form:form action="${contextPath}/insertSertvice" modelAttribute="serviceDTO" method="POST">
                    <div class="form-group  row"><label class="col-sm-2 col-form-label">Service</label>
                        <div class="col-sm-10">
                            <form:input type="text" path="" class="form-control" required="true" /></div>
                    </div>
                    <div class="hr-line-dashed"></div>
                    <div class="col-lg-12 text-right">
                        <div class="col-sm-12 col-sm-offset-2 ">
                            <button id="resetLaw" name="resetLaw" class="btn btn-white btn-sm" type="submit">Delete Service</button>
                            <c:choose>
                                <c:when test="${not empty serviceDTO.id}">
                                    <button id="updateService" name="updateService" class="btn btn-primary btn-sm" type="submit">Update Service</button>
                                </c:when>
                                <c:otherwise>
                                    <button id="saveService" name="saveService" class="btn btn-primary btn-sm" type="submit">Save</button>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
<%--                    <form:hidden path="id"/>--%>
                </form:form>
            </div>
        </div>
    </div>
</div>
